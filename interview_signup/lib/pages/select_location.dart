import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:interview_signup/utils/app_layout.dart';
import 'package:interview_signup/utils/app_style.dart';
import 'package:interview_signup/utils/location_list.dart';

class SelectLocation extends StatelessWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
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
              Text(
                '지금 사는 곳은 어디신가요?',
                style: Styles.headLineStyle.copyWith(fontSize: 28),
              ),
              Gap(AppLayout.getHeight(20)),
              Text(
                '지역',
                style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
                height: AppLayout.getHeight(40),
                width: double.maxFinite,
                child: Text(
                  '서울',
                  style: Styles.headLineStyle.copyWith(fontSize: 18),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
                height: AppLayout.getHeight(40),
                width: double.maxFinite,
                child: Text(
                  '경기',
                  style: Styles.headLineStyle.copyWith(fontSize: 18),
                ),
              ),
              for (int i = 0; i < location_list.length; i++)
                LocationContainer(location: location_list[i]),
            ],
          ),
        ),
      ),
    );
  }
}

class LocationContainer extends StatelessWidget {
  const LocationContainer({
    Key? key,
    required this.location,
  }) : super(key: key);

  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
      height: AppLayout.getHeight(40),
      width: double.maxFinite,
      child: Text(
        location,
        style: Styles.headLineStyle.copyWith(fontSize: 18),
      ),
    );
  }
}
