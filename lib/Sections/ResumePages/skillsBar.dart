import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

Padding skillsBar({String? skillName, double? skillPercent}) {
  return Padding(
    padding: const EdgeInsets.only(left: 64.0, top: 16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skillName!,
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 16.0,
        ),
        LinearPercentIndicator(
          alignment: MainAxisAlignment.start,

          lineHeight: 14.0,
          percent: skillPercent!,
          backgroundColor: Colors.grey.shade700,
          // progressColor: Colors.blue,
          linearGradient: LinearGradient(colors: [
            Color(0xffd61a5e),
            Color(0xffff8c05),
          ]),
          padding: const EdgeInsets.only(bottom: 8.0, right: 32.0),
        ),
      ],
    ),
  );
}
