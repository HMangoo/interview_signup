import 'package:flutter/material.dart';
import 'package:interview_signup/utils/app_layout.dart';
import 'package:interview_signup/utils/app_style.dart';

class OnlyText extends StatelessWidget {
  const OnlyText(this.message, {Key? key}) : super(key: key);

  final String message;

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
          child: Text(
            message,
            style: Styles.questionStyle,
          ),
        ),
      ],
    );
  }
}
