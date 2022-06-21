import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../styles/custome_style.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry? padding;
  final Function()? onPressed;
  const CommonButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding ??
            const EdgeInsets.symmetric(
              horizontal: 50.0,
              vertical: 15.0,
            ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: AppColors.greenGradianColor,
        ),
        child: Text(
          title,
          style: CustomeStyle.commonButtonTextStyle,
        ),
      ),
    );
  }
}
