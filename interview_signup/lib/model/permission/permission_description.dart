import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/app_layout.dart';
import '../../utils/app_style.dart';

class PermissionDescription extends StatelessWidget {
  const PermissionDescription(
      {Key? key,
      required this.icon,
      required this.description,
      required this.permission})
      : super(key: key);

  final IconData icon;
  final String permission;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: AppLayout.getHeight(45),
              width: AppLayout.getWidth(45),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  color: Styles.minorColor),
              child: Center(child: Icon(icon, color: Colors.white)),
            ),
            Gap(AppLayout.getWidth(10)),
            Text(
              permission,
              style: TextStyle(fontSize: AppLayout.getHeight(20)),
            ),
          ],
        ),
        Row(
          children: [
            Gap(AppLayout.getWidth(55)),
            Container(
              constraints: BoxConstraints(maxWidth: AppLayout.getWidth(310)),
              child: Text(
                description,
                style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: AppLayout.getHeight(17)),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
