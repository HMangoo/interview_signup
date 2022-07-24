import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/location_controller.dart';
import '../../utils/app_layout.dart';
import '../../utils/app_style.dart';

class CitySelector extends StatelessWidget {
  const CitySelector(
      {Key? key, required this.locationController, required this.location})
      : super(key: key);

  final LocationController locationController;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: (location == '서울')
            ? locationController.tapSeoul
            : locationController.tapGyenggi,
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(8),
              horizontal: AppLayout.getWidth(12)),
          height: AppLayout.getHeight(40),
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                location,
                style: Styles.headLineStyle.copyWith(fontSize: 18),
              ),
              locationController.seoulTapped.value
                  ? const Icon(Icons.keyboard_arrow_up)
                  : const Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
      ),
    );
  }
}
