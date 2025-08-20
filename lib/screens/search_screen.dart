import 'package:flutter/material.dart';
import 'package:flutter_examples/core/theme/app_theme.dart';
import 'package:flutter_examples/core/styles/app_styles.dart';
import 'package:flutter_examples/shared/widgets/section_header.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: AppTheme.backgroundColor,
      body: ListView(
        padding: AppStyles.paddingHorizontalM,
        children: [
          const SizedBox(height: 40),
          // Example 1: Section with action button
          SectionHeader(
            title: 'Recent Searches',
            actionText: 'Clear All',
            onActionPressed: () {
              // Handle clear all action
            },
          ),
          const SizedBox(height: 20),

          // Example 2: Section without action button
          SectionHeader(title: 'Popular Categories'),
          const SizedBox(height: 20),

          // Example 3: Section with custom styling
          SectionHeader(
            title: 'Featured Destinations',
            actionText: 'See More',
            onActionPressed: () {
              // Handle see more action
            },
            titleStyle: AppTheme.heading2,
            actionTextStyle: AppTheme.bodySmall.copyWith(
              color: AppTheme.secondaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
