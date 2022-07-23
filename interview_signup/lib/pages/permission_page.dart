import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:interview_signup/utils/app_layout.dart';
import 'package:interview_signup/utils/app_style.dart';

class PermissionPage extends StatelessWidget {
  const PermissionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
          child: Column(
            children: [
              Gap(AppLayout.getHeight(80)),
              Text('앱 사용을 위해 권한을 허용해주세요',
                  style: Styles.headLineStyle.copyWith(fontSize: 24)),
              Gap(AppLayout.getHeight(20)),
              Text(
                '플렉스 서비스 사용을 위해 꼭 필요한 권한만 요청드리고 있어요 :)',
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: AppLayout.getHeight(16)),
              ),
              Gap(AppLayout.getHeight(30)),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: AppLayout.getHeight(45),
                        width: AppLayout.getWidth(45),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(10)),
                            color: Styles.minorColor),
                        child: const Center(
                            child: Icon(Icons.notifications_on,
                                color: Colors.white)),
                      ),
                      Gap(AppLayout.getWidth(10)),
                      Text(
                        '알림',
                        style: TextStyle(fontSize: AppLayout.getHeight(20)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Gap(AppLayout.getWidth(55)),
                      Container(
                        constraints:
                            BoxConstraints(maxWidth: AppLayout.getWidth(310)),
                        child: Text(
                          '가입 승인 결과, 새로운 소개, 매칭, 라운지 활동, 데이트 초대 알림을 받을 수 있습니다',
                          style: TextStyle(
                              color: Colors.grey.shade500,
                              fontSize: AppLayout.getHeight(18)),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
