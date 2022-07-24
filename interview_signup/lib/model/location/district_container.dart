import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/app_layout.dart';
import '../../utils/app_style.dart';

class DistrictContainer extends StatelessWidget {
  const DistrictContainer({
    Key? key,
    required this.location,
  }) : super(key: key);

  final String location;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(8)),
        height: AppLayout.getHeight(40),
        width: double.maxFinite,
        child: Text(
          location,
          style: Styles.headLineStyle.copyWith(fontSize: 18),
        ),
      ),
    );
  }
}
