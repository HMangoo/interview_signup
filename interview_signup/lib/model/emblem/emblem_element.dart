import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../../utils/app_layout.dart';

class EmblemElement extends StatelessWidget {
  const EmblemElement({
    Key? key,
    required this.tear,
  }) : super(key: key);

  final Map<String, dynamic> tear;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.grey.shade100,
        width: AppLayout.getWidth(185),
        height: AppLayout.getHeight(185),
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(8),
            vertical: AppLayout.getHeight(10)),
        child: Stack(
          children: [
            if (tear['blind'] == true)
              Positioned(
                bottom: AppLayout.getHeight(40),
                right: AppLayout.getWidth(5),
                child: Transform.rotate(
                  angle: 340 * math.pi / 180, // 45 부분이 원하는 각도
                  child: Container(
                    child: Text(
                      "BLIND",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.blueGrey,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tear['id']),
                        Container(
                          height: AppLayout.getHeight(60),
                          width: AppLayout.getWidth(160),
                          child: Text(
                            (tear['score'] == null)
                                ? tear['description']
                                : tear['score'].toString(),
                            maxLines: 3,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image(
                        width: AppLayout.getWidth(60),
                        height: AppLayout.getHeight(60),
                        image: AssetImage(tear['badge'])),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
