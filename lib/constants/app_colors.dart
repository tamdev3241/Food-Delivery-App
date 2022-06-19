import 'package:flutter/material.dart';

class AppColors {
  static const Color green = Color(0xFF53E88B);
  static const Color darkGreen = Color(0xFF15BE77);

  static const LinearGradient greenGradianColor = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      AppColors.green,
      AppColors.darkGreen,
    ],
  );
}
