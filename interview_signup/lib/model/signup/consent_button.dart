import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_layout.dart';
import '../../utils/app_style.dart';

class ConsentButton extends StatefulWidget {
  const ConsentButton({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ConsentButton> createState() => _ConsentButtonState();
}

class _ConsentButtonState extends State<ConsentButton> {
  bool _tapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_tapped == false) {
            _tapped = true;
          } else {
            _tapped = false;
          }
        });
      },
      child: Container(
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
                Icon(Icons.check_circle_outline,
                    color: _tapped ? Colors.greenAccent : Styles.questionColor),
                Gap(AppLayout.getWidth(4.0)),
                Text(
                  widget.title,
                  style: _tapped
                      ? Styles.questionStyle.copyWith(color: Colors.greenAccent)
                      : Styles.questionStyle,
                ),
              ],
            ),
            Icon(Icons.keyboard_arrow_right,
                color: _tapped ? Colors.greenAccent : Styles.questionColor)
          ],
        ),
      ),
    );
  }
}
