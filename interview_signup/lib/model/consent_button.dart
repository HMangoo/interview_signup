import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class ConsentButton extends StatelessWidget {
  const ConsentButton({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
      width: AppLayout.getWidth(250),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
          color: Styles.minorColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Gap(AppLayout.getWidth(3.0)),
              Icon(Icons.check_circle_outline, color: Styles.questionColor),
              Gap(AppLayout.getWidth(4.0)),
              Text(
                title,
                style: Styles.questionStyle,
              ),
            ],
          ),
          Icon(Icons.keyboard_arrow_right, color: Styles.questionColor)
        ],
      ),
    );
  }
}
