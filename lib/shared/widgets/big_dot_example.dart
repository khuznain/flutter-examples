import 'package:flutter/material.dart';
import 'package:flutter_examples/core/styles/app_styles.dart';
import 'package:flutter_examples/core/theme/app_theme.dart';
import 'big_dot.dart';

class BigDotExample extends StatelessWidget {
  const BigDotExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppText('BigDot Widget Examples'),
        backgroundColor: AppTheme.surfaceColor,
        foregroundColor: AppTheme.textPrimaryColor,
      ),
      body: SingleChildScrollView(
        padding: AppStyles.paddingM,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSection('Basic BigDot Widgets', [
              const BigDot(),
              const SizedBox(width: 16),
              const BigDot(size: 32),
              const SizedBox(width: 16),
              const BigDot(size: 48),
            ]),

            const SizedBox(height: 32),

            _buildSection('Predefined Color Variants', [
              const BigDot.primary(),
              const SizedBox(width: 16),
              const BigDot.secondary(),
              const SizedBox(width: 16),
              const BigDot.ticketBlue(),
              const SizedBox(width: 16),
              const BigDot.ticketRed(),
              const SizedBox(width: 16),
              const BigDot.error(),
            ]),

            const SizedBox(height: 32),

            _buildSection('Different Sizes', [
              const BigDot(size: 16),
              const SizedBox(width: 16),
              const BigDot(size: 24),
              const SizedBox(width: 16),
              const BigDot(size: 32),
              const SizedBox(width: 16),
              const BigDot(size: 48),
            ]),

            const SizedBox(height: 32),

            _buildSection('With Custom Styling', [
              BigDot(
                color: Colors.purple,
                size: 40,
                border: Border.all(color: Colors.white, width: 3),
                boxShadow: AppTheme.shadowMedium,
              ),
              const SizedBox(width: 16),
              BigDot(
                color: Colors.orange,
                size: 36,
                borderRadius: BorderRadius.circular(8),
                margin: const EdgeInsets.all(4),
              ),
              const SizedBox(width: 16),
              BigDot(
                color: Colors.green,
                size: 44,
                border: Border.all(color: Colors.black, width: 2),
              ),
            ]),

            const SizedBox(height: 32),

            _buildSection('With Child Content', [
              BigDot(
                color: Colors.indigo,
                size: 40,
                child: const Icon(Icons.star, color: Colors.white, size: 20),
              ),
              const SizedBox(width: 16),
              BigDot(
                color: Colors.teal,
                size: 40,
                child: const AppText(
                  'A',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              BigDot(
                color: Colors.deepOrange,
                size: 40,
                child: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ]),

            const SizedBox(height: 32),

            _buildSection('Interactive Dots', [
              BigDot(
                color: Colors.blue,
                size: 40,
                onTap: () => _showSnackBar(context, 'Blue dot tapped!'),
                child: const Icon(
                  Icons.touch_app,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              const SizedBox(width: 16),
              BigDot(
                color: Colors.red,
                size: 40,
                onTap: () => _showSnackBar(context, 'Red dot tapped!'),
                child: const Icon(
                  Icons.touch_app,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ]),

            const SizedBox(height: 32),

            _buildSection('Ticket Theme Dots', [
              const BigDot.ticketBlue(size: 16),
              const SizedBox(width: 16),
              const BigDot.ticketBlue(size: 24),
              const SizedBox(width: 16),
              const BigDot.ticketBlue(size: 32),
              const SizedBox(width: 32),
              const BigDot.ticketRed(size: 16),
              const SizedBox(width: 16),
              const BigDot.ticketRed(size: 24),
              const SizedBox(width: 16),
              const BigDot.ticketRed(size: 32),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title,
          style: AppTheme.heading4.copyWith(
            color: AppTheme.textPrimaryColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 16),
        Row(children: children),
      ],
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: AppText(message),
        backgroundColor: AppTheme.primaryColor,
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppTheme.radiusM),
        ),
      ),
    );
  }
}
