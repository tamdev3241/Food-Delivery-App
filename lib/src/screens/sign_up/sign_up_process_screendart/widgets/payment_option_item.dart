import 'package:flutter/material.dart';

class SignUpInfoOptionItem extends StatelessWidget {
  final Widget? paymentOptionIcon;
  final Function()? onTapped;
  final Color? borderColor;
  const SignUpInfoOptionItem({
    Key? key,
    required this.paymentOptionIcon,
    this.onTapped,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: borderColor ?? Colors.transparent,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 230, 237, 250),
              blurRadius: 15.0,
              offset: Offset(2, 5),
            ),
          ],
        ),
        child: paymentOptionIcon ?? const SizedBox.shrink(),
      ),
    );
  }
}
