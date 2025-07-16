import 'package:bmi_calculator/config/constants/app_constants.dart';
import 'package:flutter/material.dart';

class IconContentWidget extends StatelessWidget {
  const IconContentWidget({super.key, required this.cardLabel, this.icon});

  final String cardLabel;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80),
        SizedBox(height: 10),
        Text(cardLabel, style: kLabelCardTextStyle),
      ],
    );
  }
}
