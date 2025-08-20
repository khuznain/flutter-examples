import 'package:flutter/material.dart';
import 'package:flutter_examples/core/theme/app_theme.dart';

class AppLayoutBuilder extends StatelessWidget {
  final int randomNumber;
  final double width;

  const AppLayoutBuilder({
    super.key,
    required this.randomNumber,
    this.width = 3,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / randomNumber).floor(),
            (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: AppTheme.surfaceColor),
              ),
            ),
          ),
        );
      },
    );
  }
}
