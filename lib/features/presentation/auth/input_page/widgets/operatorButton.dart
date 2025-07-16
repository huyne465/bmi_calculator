import 'package:bmi_calculator/config/constants/app_constants.dart';
import 'package:flutter/material.dart';

class OperateButton extends StatelessWidget {
  const OperateButton({super.key, this.onPressed, this.icon});

  final VoidCallback? onPressed;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      splashColor: kOverlaySliderColor,
      color: kOperatorButtonColor,
      shape: CircleBorder(),
      padding: EdgeInsets.all(16),
      elevation: 0.8,
      child: Icon(icon, size: 30),
    );
  }
}
