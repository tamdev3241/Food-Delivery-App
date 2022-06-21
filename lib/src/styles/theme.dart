import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static ThemeData buildTheme = ThemeData(
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
      headline6: TextStyle(
        fontSize: 22,
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
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
      size: 24.0,
    ),
  );
}
