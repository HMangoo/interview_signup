import 'package:flutter/material.dart';

import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:interview_signup/utils/app_layout.dart';
import 'package:interview_signup/utils/app_style.dart';

import '../model/emblem/emblem_one_group.dart';
import '../utils/capacity_info_list.dart';

class EmblemPage extends StatelessWidget {
  const EmblemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('엠블럼', style: Styles.headLineStyle),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(15),
            vertical: AppLayout.getHeight(12)),
        child: Stack(
          children: [
            ListView(
              children: [
                Text('당신의 매력을 뽐내주세요', style: Styles.headLineStyle),
                Gap(AppLayout.getHeight(20)),
                Text(
                  '당신의 매력을 어필할 수 있는 엠블럼을 하나 이상 선택해서 인증 서류를 첨부해주세요',
                  style: Styles.questionStyle
                      .copyWith(color: Colors.grey.shade500, fontSize: 16),
                ),
                Gap(AppLayout.getHeight(30)),

                // SizedBox(
                //   width: double.maxFinite,
                //   height: 400,
                //   child: GridView.builder(
                //     itemCount: 3, //item 개수
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
                //         mainAxisSpacing: 20,
                //         crossAxisSpacing: 20),
                //     itemBuilder: (BuildContext context, int index) {
                //       //item 의 반목문 항목 형성
                //       return Container(
                //         color: Colors.lightGreen,
                //       );
                //     },
                //   ),
                // ),
                Column(
                  children: capacityList
                      .map((singleCapacity) =>
                          EmblemOneGroup(capacity: singleCapacity))
                      .toList(),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                  height: AppLayout.getHeight(80),
                  width: AppLayout.getSize(context).width,
                  padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(8.0),
                      horizontal: AppLayout.getWidth(12.0)),
                  child: InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(10.0))),
                      child: Center(
                        child: Text(
                          '계속',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: AppLayout.getHeight(16.0),
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
