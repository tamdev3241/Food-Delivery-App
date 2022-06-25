import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/constants/app_colors.dart';

class CustomeStyle {
  static const TextStyle commonButtonTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 17.0,
    color: Colors.white,
    fontFamily: 'Roboto-Bold',
  );

  static const TextStyle thinStyle = TextStyle(
    fontFamily: 'Roboto-Thin',
    color: Colors.grey,
  );

  static const TextStyle successBoldStyle = TextStyle(
    fontFamily: 'Roboto-Bold',
    fontWeight: FontWeight.w900,
    color: AppColors.darkGreen,
    fontSize: 32,
    letterSpacing: 1.0,
  );
}
