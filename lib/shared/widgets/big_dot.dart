import 'package:flutter/material.dart';
import 'package:flutter_examples/core/theme/app_theme.dart';

class BigDot extends StatelessWidget {
  const BigDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(width: 2.5, color: AppTheme.surfaceColor),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
