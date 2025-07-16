import 'package:bmi_calculator/config/constants/app_constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    super.key,
    this.onPressed,
    required this.color,
    required this.title,
  });

  final VoidCallback? onPressed;
  final Color color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: kBottomContainerHeight,
        width: double.infinity,
        color: color,
        child: Center(child: Text(title, style: kCalculateButtonTextStyle)),
      ),
    );
  }
}
