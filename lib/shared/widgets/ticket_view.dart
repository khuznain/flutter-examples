import 'package:flutter/material.dart';
import 'package:flutter_examples/core/styles/app_styles.dart';
import 'package:flutter_examples/core/theme/app_theme.dart';
import 'package:flutter_examples/core/widgets/app_layout_builder.dart';
import 'package:flutter_examples/shared/widgets/big_dot.dart';
import 'package:flutter_examples/shared/widgets/big_circle.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.ticketBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      AppText(
                        'NYC',
                        style: AppTheme.bodyMedium.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppTheme.surfaceColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilder(randomNumber: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.airplanemode_active,
                                  color: AppTheme.surfaceColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(child: Container()),
                      AppText(
                        'LD',
                        style: AppTheme.bodySmall.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppTheme.surfaceColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      AppText(
                        'New York',
                        style: AppTheme.bodyMedium.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppTheme.surfaceColor,
                        ),
                      ),

                      Expanded(
                        child: Center(
                          child: AppText(
                            '8H 30M',
                            style: AppTheme.bodyMedium.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppTheme.surfaceColor,
                            ),
                          ),
                        ),
                      ),

                      AppText(
                        'London',
                        style: AppTheme.bodyMedium.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppTheme.surfaceColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: AppTheme.ticketOrange,
              child: Row(
                children: [
                  const BigCircle(isRight: true),
                  Expanded(child: AppLayoutBuilder(randomNumber: 16, width: 6)),
                  const BigCircle(isRight: false),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.ticketOrange,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      AppText(
                        'NYC',
                        style: AppTheme.bodyMedium.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppTheme.surfaceColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: AppLayoutBuilder(randomNumber: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.57,
                                child: Icon(
                                  Icons.airplanemode_active,
                                  color: AppTheme.surfaceColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const BigDot(),
                      Expanded(child: Container()),
                      AppText(
                        'LD',
                        style: AppTheme.bodySmall.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppTheme.surfaceColor,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      AppText(
                        'New York',
                        style: AppTheme.bodyMedium.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppTheme.surfaceColor,
                        ),
                      ),

                      Expanded(
                        child: Center(
                          child: AppText(
                            '8H 30M',
                            style: AppTheme.bodyMedium.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppTheme.surfaceColor,
                            ),
                          ),
                        ),
                      ),

                      AppText(
                        'London',
                        style: AppTheme.bodyMedium.copyWith(
                          fontWeight: FontWeight.w400,
                          color: AppTheme.surfaceColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
