import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/text_form_controller.dart';
import '../utils/question.dart';

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
