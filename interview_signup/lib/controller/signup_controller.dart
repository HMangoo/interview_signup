import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController {
  RxBool answer1 = false.obs;
  RxBool q2 = false.obs;

  void question1() async {
    answer1.value = true;
    await Future.delayed(const Duration(milliseconds: 100));
    q2.value = true;
  }

  RxBool answer2 = false.obs;
  RxBool q3 = false.obs;

  void question2() async {
    answer2.value = true;
    await Future.delayed(const Duration(milliseconds: 100));
    q3.value = true;
  }

  RxBool answer3 = false.obs;
  RxBool q4 = false.obs;

  void question3() async {
    answer3.value = true;
    await Future.delayed(const Duration(milliseconds: 100));
    q4.value = true;
  }
}
