import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:interview_signup/utils/question.dart';

class TextFormController {
  var userEnterMessage = ''.obs;
  final textEditingController = TextEditingController();

  RxInt index = 0.obs;

  void sendMessage(context) {
    FocusScope.of(context).unfocus();
    textEditingController.clear();
  }

  void getAnswer() {
    if (index.value < question.length - 1) {
      index.value++;
    }
  }
}
