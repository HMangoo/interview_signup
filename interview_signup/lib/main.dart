import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_signup/pages/signup_page.dart';
import 'package:interview_signup/utils/app_style.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: primary),
      home: SignupPage(),
    );
  }
}
