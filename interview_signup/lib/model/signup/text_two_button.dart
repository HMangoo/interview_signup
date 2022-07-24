import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:interview_signup/controller/text_form_controller.dart';
import 'package:interview_signup/utils/app_layout.dart';
import 'package:interview_signup/utils/app_style.dart';

class TextTwoButton extends StatelessWidget {
  TextTwoButton({
    Key? key,
    required this.message,
    required this.buttonMessage1,
    required this.buttonMessage2,
    required this.onClick,
    this.isMinor1 = false,
    this.isMinor2 = true,
  }) : super(key: key);

  final String message;
  final String buttonMessage1;
  final String buttonMessage2;
  final bool isMinor1;
  final bool isMinor2;
  final VoidCallback onClick;
  TextFormController textFormController = TextFormController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          constraints: BoxConstraints(maxWidth: AppLayout.getWidth(300)),
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
              InkWell(
                onTap: onClick,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
                  width: AppLayout.getWidth(250),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(12)),
                      color: isMinor1 ? Styles.minorColor : Styles.spotColor),
                  child: Center(
                    child: Text(
                      buttonMessage1,
                      style: Styles.questionStyle,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(5)),
              Container(
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
                width: AppLayout.getWidth(250),
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(12)),
                    color: isMinor2 ? Styles.minorColor : Styles.spotColor),
                child: Center(
                  child: Text(
                    buttonMessage2,
                    style: Styles.questionStyle,
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
