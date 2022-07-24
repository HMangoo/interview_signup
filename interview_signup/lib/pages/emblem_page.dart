import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:interview_signup/utils/app_layout.dart';
import 'package:interview_signup/utils/app_style.dart';

class EmblemPage extends StatelessWidget {
  const EmblemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('엠블럼', style: Styles.headLineStyle),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(15),
            vertical: AppLayout.getHeight(12)),
        child: ListView(
          children: [Text('당신의 매력을 뽐내주세요', style: Styles.headLineStyle)],
        ),
      ),
    );
  }
}
