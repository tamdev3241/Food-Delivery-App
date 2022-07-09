import 'package:flutter/material.dart';

class CustomCardItem extends StatelessWidget {
  final Widget? child;
  final double? blurRadius;
  final Offset? offset;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? boderColor;
  final Function()? onTapped;
  const CustomCardItem({
    Key? key,
    this.child,
    this.offset,
    this.blurRadius,
    this.padding,
    this.margin,
    this.boderColor,
    this.onTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        padding: padding ?? const EdgeInsets.symmetric(vertical: 30.0),
        margin: margin ?? const EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: boderColor ?? Colors.transparent,
          ),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 234, 240, 250),
              blurRadius: blurRadius ?? 25.0,
              offset: offset ?? const Offset(10, 20),
            ),
          ],
        ),
        child: Center(child: child),
      ),
    );
  }
}
