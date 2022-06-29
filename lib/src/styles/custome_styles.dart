import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomeStyle {
  static const TextStyle commonButtonTextStyle = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 17.0,
    color: Colors.white,
    fontFamily: 'Roboto-Bold',
  );

  static const TextStyle thinTextStyle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
    fontFamily: 'Roboto-Thin',
    height: 1.5,
  );

  static const TextStyle thinUnderLineStyle = TextStyle(
    fontFamily: 'Roboto-Thin',
    height: 1.5,
    fontSize: 14,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w500,
    color: AppColors.darkGreen,
  );

  static const TextStyle successBoldTextStyle = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.w800,
    color: AppColors.darkGreen,
    fontFamily: 'Roboto-Bold',
  );
}
