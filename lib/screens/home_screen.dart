import 'package:flutter/material.dart';
import 'package:flutter_examples/core/theme/app_theme.dart';
import 'package:flutter_examples/core/styles/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText('Home'),
        backgroundColor: AppTheme.primaryColor,
      ),
      body: ListView(
        padding: AppStyles.paddingHorizontalM,
        children: [
          const SizedBox(height: AppTheme.spacingM),

          // Header Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    'Good morning',
                    style: AppTheme.bodyMedium.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: AppTheme.spacingXS),
                  AppText('Book Tickets', style: AppTheme.heading3),
                ],
              ),
              AppContainer(
                padding: AppStyles.paddingS,
                decoration: BoxDecoration(
                  color: AppTheme.primaryColor,
                  borderRadius: AppStyles.radiusM,
                ),
                child: const AppText(
                  'Home',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppTheme.spacingL),

          // Search Section
          AppCard(
            padding: AppStyles.paddingL,
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: AppTheme.textSecondaryColor,
                  size: 24,
                ),
                const SizedBox(width: AppTheme.spacingM),
                Expanded(
                  child: AppText(
                    'Search for tickets...',
                    style: AppTheme.bodyMedium.copyWith(
                      color: AppTheme.textSecondaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: AppTheme.spacingL),

          // Quick Actions Section
          AppText('Quick Actions', style: AppTheme.heading4),
          const SizedBox(height: AppTheme.spacingM),

          Row(
            children: [
              Expanded(
                child: AppCard(
                  onTap: () {
                    // Handle action
                  },
                  child: Column(
                    children: [
                      Icon(Icons.event, size: 32, color: AppTheme.primaryColor),
                      const SizedBox(height: AppTheme.spacingS),
                      AppText(
                        'Events',
                        style: AppTheme.bodyMedium.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: AppTheme.spacingM),
              Expanded(
                child: AppCard(
                  onTap: () {
                    // Handle action
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.movie,
                        size: 32,
                        color: AppTheme.secondaryColor,
                      ),
                      const SizedBox(height: AppTheme.spacingS),
                      AppText(
                        'Movies',
                        style: AppTheme.bodyMedium.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppTheme.spacingL),

          // Action Buttons
          AppButton(
            text: 'Book Now',
            onPressed: () {
              // Handle booking
            },
            icon: const Icon(Icons.add, size: 20),
          ),

          const SizedBox(height: AppTheme.spacingM),

          OutlinedButton(
            onPressed: () {
              // Handle secondary action
            },
            style: AppStyles.outlinedButtonStyle,
            child: const AppText('View History'),
          ),
        ],
      ),
    );
  }
}
