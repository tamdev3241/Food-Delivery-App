import 'package:flutter/material.dart';

import '../constants/app_assets.dart';

class LogoApp extends StatelessWidget {
  final double? size;
  const LogoApp({Key? key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.logo,
      height: size ?? 180,
      width: size ?? 180,
    );
  }
}
