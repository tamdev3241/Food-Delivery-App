import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../styles/custome_styles.dart';

class CommonButton extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final EdgeInsetsGeometry? padding;
  final Color? color;
  final Function()? onPressed;
  const CommonButton({
    Key? key,
    required this.title,
    this.titleStyle,
    required this.onPressed,
    this.padding,
    this.color,
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
          color: color,
          gradient: color != null ? null : AppColors.greenGradianColor,
        ),
        child: Text(
          title,
          style: titleStyle ?? CustomeStyle.commonButtonTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
