import 'package:flutter/material.dart';

class AppColors {
  static const Color lightgreen = Color(0xFF6FCF97);
  static const Color green = Color(0xFF53E88B);
  static const Color darkGreen = Color(0xFF15BE77);

  static const Color lightOrange = Color(0xFFF9A84D);
  static const Color orange = Color.fromARGB(255, 251, 240, 228);
  static const Color darkOrange = Color(0xFFDA6317);

  static const LinearGradient greenGradianColor = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      AppColors.green,
      AppColors.darkGreen,
    ],
  );
}
