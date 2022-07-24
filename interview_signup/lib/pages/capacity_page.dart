import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:interview_signup/pages/signup_page.dart';
import 'package:interview_signup/utils/app_layout.dart';
import 'package:interview_signup/utils/app_style.dart';

import '../model/capacity/capacity_container.dart';
import '../utils/capacity_info_list.dart';

class CapacityPage extends StatelessWidget {
  const CapacityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          '가입자격',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Text(
                '가입자격을 확인해주세요',
                style: Styles.headLineStyle,
              ),
              Gap(AppLayout.getHeight(30)),
              Text(
                '외모, 소비, 소득, 자산, 커리어 등 다양한 매력을 상징하는 22개 엠블럼 중 하나 이상을 획득하셔야 플렉스를 이용할 수 있어요',
                style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: AppLayout.getHeight(16)),
              ),
              Gap(AppLayout.getHeight(20)),
              Column(
                children: capacityList
                    .map((singleCapacity) =>
                        CapacityContainer(capacity: singleCapacity))
                    .toList(),
              ),
              SizedBox(height: AppLayout.getHeight(60))
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
                        '다 확인했어요',
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
    );
  }
}
