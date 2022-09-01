import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/app_colors.dart';

class AppTheme {
  static ThemeData buildTheme = ThemeData(
    primaryColor: AppColors.darkGreen,
    brightness: Brightness.light,
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarColor: Colors.transparent,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      headline3: TextStyle(
        fontSize: 33,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontFamily: 'Roboto-Bold',
      ),
      headline4: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontFamily: 'Roboto-Bold',
      ),
      headline5: TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontFamily: 'Roboto-Bold',
      ),
      headline6: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontFamily: 'Roboto-Bold',
      ),
      bodyText1: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontFamily: 'Roboto-Bold',
      ),
      bodyText2: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        fontFamily: 'Roboto-Bold',
      ),
      subtitle2: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.black,
        fontFamily: 'Roboto-Thin',
        height: 1.5,
      ),
      subtitle1: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.black,
        fontFamily: 'Roboto-Regular',
      ),
    ),
  );
}
