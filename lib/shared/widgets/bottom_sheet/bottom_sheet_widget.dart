import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_button.dart';

class BottomSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback onPrimaryPressed;
  final String secondaryLabel;
  final VoidCallback onSecondaryPressed;
  final String title;
  final String subtitle;
  const BottomSheetWidget(
      {Key? key,
      required this.primaryLabel,
      required this.onPrimaryPressed,
      required this.secondaryLabel,
      required this.onSecondaryPressed,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: AppColors.shape,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(40),
                    child: Text.rich(
                      TextSpan(
                        text: title,
                        style: TextStyles.titleBoldHeading,
                        children: [
                          TextSpan(
                            text: "\n$subtitle",
                            style: TextStyles.buttonHeading,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: AppColors.stroke,
                  ),
                  SetLabelButtons(
                      enabledPrimaryColor: true,
                      primaryLabel: primaryLabel,
                      onPrimaryPressed: onPrimaryPressed,
                      secondaryLabel: secondaryLabel,
                      onSecondaryPressed: onSecondaryPressed)
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
