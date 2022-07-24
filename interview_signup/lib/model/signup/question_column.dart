import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_signup/controller/text_form_controller.dart';
import 'package:interview_signup/utils/question.dart';

// ignore: must_be_immutable
class QusetionColumn extends StatelessWidget {
  QusetionColumn({Key? key}) : super(key: key);

  TextFormController textFormController = TextFormController();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: question[textFormController.index.value]
            .map((quest) => quest)
            .toList(),
      ),
    );
  }
}
