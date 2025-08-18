import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class AppStyles {
  // Padding and Margin
  static const EdgeInsets paddingXS = EdgeInsets.all(AppTheme.spacingXS);
  static const EdgeInsets paddingS = EdgeInsets.all(AppTheme.spacingS);
  static const EdgeInsets paddingM = EdgeInsets.all(AppTheme.spacingM);
  static const EdgeInsets paddingL = EdgeInsets.all(AppTheme.spacingL);
  static const EdgeInsets paddingXL = EdgeInsets.all(AppTheme.spacingXL);

  static const EdgeInsets paddingHorizontalXS = EdgeInsets.symmetric(horizontal: AppTheme.spacingXS);
  static const EdgeInsets paddingHorizontalS = EdgeInsets.symmetric(horizontal: AppTheme.spacingS);
  static const EdgeInsets paddingHorizontalM = EdgeInsets.symmetric(horizontal: AppTheme.spacingM);
  static const EdgeInsets paddingHorizontalL = EdgeInsets.symmetric(horizontal: AppTheme.spacingL);
  static const EdgeInsets paddingHorizontalXL = EdgeInsets.symmetric(horizontal: AppTheme.spacingXL);

  static const EdgeInsets paddingVerticalXS = EdgeInsets.symmetric(vertical: AppTheme.spacingXS);
  static const EdgeInsets paddingVerticalS = EdgeInsets.symmetric(vertical: AppTheme.spacingS);
  static const EdgeInsets paddingVerticalM = EdgeInsets.symmetric(vertical: AppTheme.spacingM);
  static const EdgeInsets paddingVerticalL = EdgeInsets.symmetric(vertical: AppTheme.spacingL);
  static const EdgeInsets paddingVerticalXL = EdgeInsets.symmetric(vertical: AppTheme.spacingXL);

  // Border Radius
  static const BorderRadius radiusS = BorderRadius.all(Radius.circular(AppTheme.radiusS));
  static const BorderRadius radiusM = BorderRadius.all(Radius.circular(AppTheme.radiusM));
  static const BorderRadius radiusL = BorderRadius.all(Radius.circular(AppTheme.radiusL));
  static const BorderRadius radiusXL = BorderRadius.all(Radius.circular(AppTheme.radiusXL));
  static const BorderRadius radiusXXL = BorderRadius.all(Radius.circular(AppTheme.radiusXXL));

  // Borders
  static const BorderSide borderLight = BorderSide(color: AppTheme.dividerColor, width: 1);
  static const BorderSide borderMedium = BorderSide(color: AppTheme.dividerColor, width: 2);
  static const BorderSide borderPrimary = BorderSide(color: AppTheme.primaryColor, width: 2);
  static const BorderSide borderError = BorderSide(color: AppTheme.errorColor, width: 1);

  // Box Decorations
  static BoxDecoration cardDecoration = BoxDecoration(
    color: AppTheme.surfaceColor,
    borderRadius: radiusL,
    boxShadow: AppTheme.shadowSmall,
  );

  static BoxDecoration elevatedCardDecoration = BoxDecoration(
    color: AppTheme.surfaceColor,
    borderRadius: radiusL,
    boxShadow: AppTheme.shadowMedium,
  );

  static BoxDecoration primaryCardDecoration = BoxDecoration(
    color: AppTheme.primaryColor,
    borderRadius: radiusL,
    boxShadow: AppTheme.shadowSmall,
  );

  static BoxDecoration secondaryCardDecoration = BoxDecoration(
    color: AppTheme.secondaryColor,
    borderRadius: radiusL,
    boxShadow: AppTheme.shadowSmall,
  );

  // Input Decorations
  static const InputDecoration textFieldDecoration = InputDecoration(
    filled: true,
    fillColor: AppTheme.backgroundColor,
    border: OutlineInputBorder(
      borderRadius: radiusM,
      borderSide: borderLight,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: radiusM,
      borderSide: borderLight,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: radiusM,
      borderSide: borderPrimary,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: radiusM,
      borderSide: borderError,
    ),
    contentPadding: EdgeInsets.symmetric(
      horizontal: AppTheme.spacingM,
      vertical: AppTheme.spacingM,
    ),
  );

  // Button Styles
  static ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppTheme.primaryColor,
    foregroundColor: Colors.white,
    elevation: 2,
    padding: const EdgeInsets.symmetric(
      horizontal: AppTheme.spacingL,
      vertical: AppTheme.spacingM,
    ),
    shape: RoundedRectangleBorder(borderRadius: radiusM),
  );

  static ButtonStyle secondaryButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: AppTheme.secondaryColor,
    foregroundColor: Colors.black,
    elevation: 2,
    padding: const EdgeInsets.symmetric(
      horizontal: AppTheme.spacingL,
      vertical: AppTheme.spacingM,
    ),
    shape: RoundedRectangleBorder(borderRadius: radiusM),
  );

  static ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
    foregroundColor: AppTheme.primaryColor,
    side: const BorderSide(color: AppTheme.primaryColor),
    padding: const EdgeInsets.symmetric(
      horizontal: AppTheme.spacingL,
      vertical: AppTheme.spacingM,
    ),
    shape: RoundedRectangleBorder(borderRadius: radiusM),
  );

  static ButtonStyle textButtonStyle = TextButton.styleFrom(
    foregroundColor: AppTheme.primaryColor,
    padding: const EdgeInsets.symmetric(
      horizontal: AppTheme.spacingM,
      vertical: AppTheme.spacingS,
    ),
  );
}

// Reusable Widget Classes
class AppContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxDecoration? decoration;
  final double? width;
  final double? height;
  final AlignmentGeometry? alignment;

  const AppContainer({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.decoration,
    this.width,
    this.height,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: decoration,
      alignment: alignment,
      child: child,
    );
  }
}

class AppCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BoxDecoration? decoration;
  final VoidCallback? onTap;

  const AppCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.decoration,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget card = AppContainer(
      padding: padding ?? AppStyles.paddingM,
      margin: margin,
      decoration: decoration ?? AppStyles.cardDecoration,
      child: child,
    );

    if (onTap != null) {
      return GestureDetector(
        onTap: onTap,
        child: card,
      );
    }

    return card;
  }
}

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? style;
  final bool isLoading;
  final Widget? icon;

  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.style,
    this.isLoading = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: style ?? AppStyles.primaryButtonStyle,
      child: isLoading
          ? const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (icon != null) ...[
                  icon!,
                  const SizedBox(width: AppTheme.spacingS),
                ],
                Text(text, style: AppTheme.button),
              ],
            ),
    );
  }
}

class AppText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const AppText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}

// Helper extension for responsive design
extension ResponsiveExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
  double get statusBarHeight => MediaQuery.of(this).padding.top;
  double get bottomPadding => MediaQuery.of(this).padding.bottom;
  
  bool get isSmallScreen => screenWidth < 600;
  bool get isMediumScreen => screenWidth >= 600 && screenWidth < 1200;
  bool get isLargeScreen => screenWidth >= 1200;
  
  double get responsivePadding {
    if (isSmallScreen) return AppTheme.spacingM;
    if (isMediumScreen) return AppTheme.spacingL;
    return AppTheme.spacingXL;
  }
}
