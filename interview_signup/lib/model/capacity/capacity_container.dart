import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:interview_signup/controller/capacity_select_controller.dart';

import '../../utils/app_layout.dart';
import 'capacity_select_container.dart';

class CapacityContainer extends StatelessWidget {
  CapacityContainer({Key? key, required this.capacity}) : super(key: key);

  final Map<String, dynamic> capacity;
  CapacitySelectController csController = CapacitySelectController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: AppLayout.getHeight(10)),
      height: AppLayout.getHeight(170),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade200),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                capacity['capacity'],
                textAlign: TextAlign.start,
              ),
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          Obx(
            () => Row(
              children: [
                Image(
                  image: AssetImage(capacity['tear']
                      ['tear${csController.selectdCapacity.value}']['badge']),
                  width: AppLayout.getWidth(50),
                  height: AppLayout.getHeight(50),
                  fit: BoxFit.cover,
                ),
                Gap(AppLayout.getWidth(10)),
                Text(
                  (capacity['not_tear'] == null)
                      ? capacity['capacity_en']
                      : capacity['tear']
                          ['tear${csController.selectdCapacity.value}']['id'],
                  style: TextStyle(fontSize: AppLayout.getHeight(20)),
                ),
                if (capacity['tear']
                            ['tear${csController.selectdCapacity.value}']
                        ['blind'] !=
                    null)
                  Container(
                    height: AppLayout.getHeight(20),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3),
                        vertical: AppLayout.getWidth(5)),
                    margin: EdgeInsets.only(left: AppLayout.getWidth(5)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(10)),
                        color: const Color.fromARGB(255, 8, 71, 10)),
                    child: const Text(
                      'Blind',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
              ],
            ),
          ),
          Row(
            children: [
              Gap(AppLayout.getWidth(60)),
              Obx(
                () => Container(
                  height: AppLayout.getHeight(35),
                  constraints:
                      BoxConstraints(maxWidth: AppLayout.getWidth(310)),
                  child: Text(
                    (capacity['not_tear'] == null)
                        ? '${capacity['qualification']} ${capacity['tear']['tear${csController.selectdCapacity.value}']['score']} +'
                        : capacity['tear']
                                ['tear${csController.selectdCapacity.value}']
                            ['description'],
                    style: TextStyle(
                        fontSize: AppLayout.getHeight(12),
                        color: Colors.grey.shade500),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              for (int i = 0; i < capacity['num_tears']; i++)
                CapacitySelectContainer(
                  tear: capacity['tear']['tear${i + 1}'],
                  controller: csController,
                  numOption: capacity['num_tears'],
                )
            ],
          )
        ],
      ),
    );
  }
}
