import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:interview_signup/utils/app_layout.dart';
import 'package:interview_signup/utils/app_style.dart';

class TextOneButton extends StatelessWidget {
  const TextOneButton(
      {Key? key,
      required this.message,
      required this.buttonMessage,
      required this.onClick,
      this.isMinor = false})
      : super(key: key);

  final String message;
  final String buttonMessage;
  final bool isMinor;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: AppLayout.getWidth(300),
          decoration: BoxDecoration(
            color: Styles.questionColor,
            borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
          ),
          padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(10),
              horizontal: AppLayout.getWidth(16)),
          margin: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(4),
              horizontal: AppLayout.getWidth(8)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: Styles.questionStyle,
              ),
              Gap(AppLayout.getHeight(10)),
              Center(
                child: InkWell(
                  onTap: onClick,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
                    width: AppLayout.getWidth(250),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        color: isMinor ? Styles.minorColor : Styles.spotColor),
                    child: Center(
                        child: Text(
                      buttonMessage,
                      style: Styles.questionStyle,
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
