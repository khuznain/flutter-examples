import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';
import '../../core/styles/app_styles.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final String? actionText;
  final VoidCallback? onActionPressed;
  final TextStyle? titleStyle;
  final TextStyle? actionTextStyle;
  final MainAxisAlignment mainAxisAlignment;

  const SectionHeader({
    super.key,
    required this.title,
    this.actionText,
    this.onActionPressed,
    this.titleStyle,
    this.actionTextStyle,
    this.mainAxisAlignment = MainAxisAlignment.spaceBetween,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        AppText(title, style: titleStyle ?? AppTheme.heading3),
        if (actionText != null)
          InkWell(
            onTap: onActionPressed,
            child: AppText(
              actionText!,
              style:
                  actionTextStyle ??
                  AppTheme.bodyMedium.copyWith(
                    color: AppTheme.primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
      ],
    );
  }
}
