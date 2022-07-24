import 'package:flutter/material.dart';

import '../../utils/app_layout.dart';
import '../../utils/app_style.dart';

// ignore: must_be_immutable
class OptionButton extends StatelessWidget {
  OptionButton({
    Key? key,
    required this.buttonMessage,
  }) : super(key: key);

  final List<String> buttonMessage;
  late int messageLength = buttonMessage.length;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (int i = 0; i < messageLength; i++) optionElement(buttonMessage[i])
      ],
      // [
      //   optionElement(),
      //   Gap(AppLayout.getWidth(6.5)),
      //   Center(
      //     child: Container(
      //       padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
      //       width: AppLayout.getWidth(85),
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
      //           color: Styles.spotColor),
      //       child: Center(
      //           child: Text(
      //         buttonMessage,
      //         style: Styles.questionStyle,
      //       )),
      //     ),
      //   ),
      //   Gap(AppLayout.getWidth(6.5)),
      //   Center(
      //     child: Container(
      //       padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
      //       width: AppLayout.getWidth(85),
      //       decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
      //           color: Styles.spotColor),
      //       child: Center(
      //           child: Text(
      //         buttonMessage,
      //         style: Styles.questionStyle,
      //       )),
      //     ),
      //   ),
      // ],
    );
  }

  Center optionElement(String buttonMessage) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(10)),
        width: AppLayout.getWidth(85),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
            color: Styles.spotColor),
        child: Center(
            child: Text(
          buttonMessage,
          style: Styles.questionStyle,
        )),
      ),
    );
  }
}
