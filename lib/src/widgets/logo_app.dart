import 'package:flutter/material.dart';

import '../constants/app_assets.dart';

class LogoApp extends StatelessWidget {
  final double? size;
  const LogoApp({Key? key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size ?? 250.0,
      width: size ?? 250.0,
      child: Image.asset(AppAssets.logo),
    );
  }
}
