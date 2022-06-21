import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../styles/custome_style.dart';

class SignUpFormField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hindText;
  final EdgeInsetsGeometry? padding;
  final Widget? icon;
  final bool? isPassword;
  final String? Function(String? str)? validate;
  const SignUpFormField({
    Key? key,
    this.hindText,
    this.controller,
    this.icon,
    this.padding,
    this.isPassword,
    this.validate,
  }) : super(key: key);

  @override
  State<SignUpFormField> createState() => _SignUpFormFieldState();
}

class _SignUpFormFieldState extends State<SignUpFormField> {
  bool isShowPass = false;
  bool? isPassword;

  @override
  void initState() {
    isPassword = widget.isPassword ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget? iconWidget =
        widget.icon.runtimeType == Icon || widget.icon.runtimeType == Image
            ? widget.icon
            : const SizedBox.shrink();
    return TextFormField(
      controller: widget.controller,
      style: CustomeStyle.thinStyle,
      obscureText: isShowPass,
      obscuringCharacter: '*',
      cursorColor: AppColors.darkGreen,
      decoration: InputDecoration(
        prefixIcon: iconWidget,
        suffixIcon: isPassword!
            ? GestureDetector(
                onTap: (() => setState(() => isShowPass = !isShowPass)),
                child: Icon(
                  isShowPass ? Icons.visibility_off : Icons.visibility,
                  color: Colors.black,
                ),
              )
            : const SizedBox.shrink(),
        hintText: widget.hindText,
        hintStyle: CustomeStyle.thinStyle,
        errorStyle: const TextStyle(
          fontSize: 15.0,
          height: 1.2,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.0),
          borderSide: const BorderSide(
            color: Color(0xFFF4F4F4),
            width: 0.2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: const BorderSide(
            color: AppColors.darkGreen,
            width: 1.5,
          ),
        ),
      ),
      validator: widget.validate,
    );
  }
}
