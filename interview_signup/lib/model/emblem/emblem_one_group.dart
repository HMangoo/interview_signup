import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:interview_signup/model/emblem/emblem_element.dart';

import '../../utils/app_layout.dart';
import '../../utils/app_style.dart';

class EmblemOneGroup extends StatelessWidget {
  const EmblemOneGroup({Key? key, required this.capacity}) : super(key: key);

  final Map<String, dynamic> capacity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(AppLayout.getHeight(30)),
        Text(capacity['capacity'],
            style: Styles.questionStyle.copyWith(color: Colors.grey.shade500)),
        Gap(AppLayout.getHeight(5)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            EmblemElement(tear: capacity['tear']['tear1']),
            EmblemElement(tear: capacity['tear']['tear2']),
          ],
        ),
        Gap(AppLayout.getHeight(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            EmblemElement(tear: capacity['tear']['tear3']),
            if (capacity['num_tears'] == 4)
              EmblemElement(tear: capacity['tear']['tear4']),
          ],
        ),
      ],
    );
  }
}
