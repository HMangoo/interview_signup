import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:interview_signup/controller/location_controller.dart';
import 'package:interview_signup/model/location/city_selector.dart';
import 'package:interview_signup/utils/app_layout.dart';
import 'package:interview_signup/utils/app_style.dart';
import 'package:interview_signup/utils/location_list.dart';

import '../model/location/district_container.dart';

class SelectLocation extends StatelessWidget {
  SelectLocation({Key? key}) : super(key: key);

  LocationController locationController = LocationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Gap(AppLayout.getHeight(20)),
            Center(
              child: Text(
                '지역',
                style: Styles.headLineStyle,
              ),
            ),
            Gap(AppLayout.getHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '지금 사는 곳은 어디신가요?',
                    style: Styles.headLineStyle.copyWith(fontSize: 28),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  Text(
                    '지역',
                    style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
                  ),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            CitySelector(
                locationController: locationController, location: '서울'),
            Obx(() {
              if (locationController.seoulTapped.value) {
                return Column(
                  children: [
                    for (int i = 0; i < locationList.length; i++)
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(20)),
                        color: Colors.grey.shade200,
                        child: DistrictContainer(location: seoulList[i]),
                      ),
                  ],
                );
              } else {
                return Container();
              }
            }),
            CitySelector(
                locationController: locationController, location: '경기'),
            Obx(() {
              if (locationController.gyeonggiTapped.value) {
                return Column(
                  children: [
                    for (int i = 0; i < locationList.length; i++)
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(20)),
                        color: Colors.grey.shade200,
                        child: DistrictContainer(location: gyeonggiList[i]),
                      ),
                  ],
                );
              } else {
                return Container();
              }
            }),
            for (int i = 0; i < locationList.length; i++)
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(12)),
                child: DistrictContainer(location: locationList[i]),
              ),
          ],
        ),
      ),
    );
  }
}
