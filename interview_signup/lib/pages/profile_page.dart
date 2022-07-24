import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:interview_signup/pages/signup_page.dart';
import 'package:interview_signup/utils/app_layout.dart';
import 'package:interview_signup/utils/app_style.dart';
import '../model/profile/image_box.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('사진', style: Styles.headLineStyle),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '어떤 사진으로 어필해볼까요?',
              style: Styles.headLineStyle,
            ),
            Gap(AppLayout.getHeight(20)),
            Text(
              '프로필 사진',
              style: Styles.questionStyle.copyWith(
                  color: Colors.grey.shade400, fontWeight: FontWeight.bold),
            ),
            Gap(AppLayout.getHeight(10)),
            Row(
              children: [
                ImageBox(size: 240, color: Colors.grey.shade700),
                Gap(AppLayout.getWidth(10)),
                Column(
                  children: [
                    ImageBox(size: 115, color: Colors.grey.shade700),
                    Gap(AppLayout.getHeight(10)),
                    ImageBox(size: 115, color: Colors.grey.shade700)
                  ],
                )
              ],
            ),
            Gap(AppLayout.getHeight(10)),
            Row(
              children: [
                ImageBox(size: 115, color: Colors.grey.shade400),
                Gap(AppLayout.getWidth(10)),
                ImageBox(size: 115, color: Colors.grey.shade400),
                Gap(AppLayout.getWidth(10)),
                ImageBox(size: 115, color: Colors.grey.shade400),
              ],
            ),
            Gap(AppLayout.getHeight(20)),
            Center(
                child: Text(
              '얼굴이 선명히 보이는 사진을 3장 이상 등록해주세요',
              style: TextStyle(fontSize: 10, color: Styles.spotColor),
            )),
            Gap(AppLayout.getHeight(10)),
            Container(
              height: AppLayout.getHeight(70),
              width: AppLayout.getSize(context).width,
              padding:
                  EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12.0)),
              child: InkWell(
                onTap: () {
                  Get.to(() => SignupPage());
                },
                child: Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(10.0))),
                  child: Center(
                    child: Text(
                      '확인',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppLayout.getHeight(16.0),
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
