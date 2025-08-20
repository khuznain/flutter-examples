import 'package:flutter/material.dart';
import 'package:flutter_examples/core/theme/app_theme.dart';
import 'package:flutter_examples/core/styles/app_styles.dart';
import 'package:flutter_examples/core/media/app_media.dart';
import 'package:flutter_examples/shared/widgets/section_header.dart';
import 'package:flutter_examples/shared/widgets/ticket_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: AppStyles.paddingHorizontalM,
            child: Column(
              children: [
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
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(AppMedia.logo),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    color: AppTheme.surfaceColor,
                    borderRadius: AppStyles.radiusL,
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.search),
                      AppText('Search', style: AppTheme.bodyMedium),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                SectionHeader(
                  title: 'Upcoming Flights',
                  actionText: 'View All',
                  onActionPressed: () {},
                ),
                const SizedBox(height: 20),
                const TicketView(),
                const SizedBox(height: 40),
                SectionHeader(
                  title: 'Popular Destinations',
                  actionText: 'View All',
                  onActionPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
