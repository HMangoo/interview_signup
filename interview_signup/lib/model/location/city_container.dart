import 'package:flutter/material.dart';

import '../../utils/app_layout.dart';
import '../../utils/app_style.dart';

class CityContainer extends StatelessWidget {
  const CityContainer({
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
