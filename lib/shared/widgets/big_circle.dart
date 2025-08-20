import 'package:flutter/material.dart';
import 'package:flutter_examples/core/theme/app_theme.dart';

class BigCircle extends StatelessWidget {
  final bool isRight;

  const BigCircle({super.key, this.isRight = true});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppTheme.surfaceColor,
          borderRadius: isRight
              ? BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )
              : BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
        ),
      ),
    );
  }
}
