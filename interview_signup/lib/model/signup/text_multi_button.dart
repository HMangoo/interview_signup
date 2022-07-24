import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:interview_signup/utils/app_layout.dart';
import 'package:interview_signup/utils/app_style.dart';

import 'option_button.dart';

class TextMultiButton extends StatelessWidget {
  const TextMultiButton(
      {Key? key,
      required this.message,
      required this.buttonMessageList,
      this.isMinor = false})
      : super(key: key);

  final String message;
  final String buttonMessageList;
  final bool isMinor;

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
              OptionButton(buttonMessage: const ['대학교 재학', '대학교 졸업', '고등학교']),
              Gap(AppLayout.getHeight(6)),
              OptionButton(buttonMessage: const ['대학교 재학', '대학교 졸업']),
            ],
          ),
        ),
      ],
    );
  }
}
