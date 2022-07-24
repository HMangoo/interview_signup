import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:interview_signup/controller/capacity_select_controller.dart';

import '../../utils/app_layout.dart';

// ignore: must_be_immutable
class CapacitySelectContainer extends StatelessWidget {
  CapacitySelectContainer(
      {Key? key,
      required this.tear,
      required this.controller,
      required this.numOption})
      : super(key: key);

  final Map<String, dynamic> tear;
  CapacitySelectController controller;
  final int numOption;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          controller.selectdCapacity.value = tear['id_num'];
          controller.capacitySelection(tear['id_num']);
        },
        child: Container(
          margin: EdgeInsets.only(left: AppLayout.getWidth(5)),
          height: AppLayout.getHeight(30),
          padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(5),
              horizontal: AppLayout.getWidth(8)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
              color: (controller.selectdCapacity.value == tear['id_num'])
                  ? Colors.white70
                  : Colors.grey.shade400),
          child: Center(
            child: Row(
              children: [
                Image(
                  image: AssetImage(tear['badge']),
                  height: ((numOption == 3) ||
                          (numOption == 4 &&
                              controller.selectdCapacity.value ==
                                  tear['id_num']))
                      ? AppLayout.getHeight(20)
                      : AppLayout.getHeight(10),
                  fit: BoxFit.fitWidth,
                ),
                Gap(AppLayout.getWidth(3.0)),
                Text(
                  tear['id'],
                  style: TextStyle(
                      color:
                          (controller.selectdCapacity.value == tear['id_num'])
                              ? Colors.black87
                              : Colors.white,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
