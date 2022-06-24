import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../styles/custome_style.dart';

class CommonTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hindText;
  final EdgeInsetsGeometry? padding;
  final Widget? icon;
  final bool? isPassword;
  final String? Function(String? str)? validate;
  const CommonTextField({
    Key? key,
    this.hindText,
    this.controller,
    this.icon,
    this.padding,
    this.isPassword = false,
    this.validate,
  }) : super(key: key);

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  bool isShowPass = false;

  @override
  void initState() {
    super.initState();
    isShowPass = widget.isPassword ?? false;
  }

  @override
  Widget build(BuildContext context) {
    Widget? iconWidget =
        widget.icon.runtimeType == Icon || widget.icon.runtimeType == Image
            ? widget.icon
            : null;
    return Container(
      padding: widget.padding,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 234, 240, 250),
            blurRadius: 12.0,
          ),
        ],
      ),
      child: TextFormField(
        controller: widget.controller,
        style: CustomeStyle.thinStyle,
        obscureText: isShowPass,
        obscuringCharacter: '•',
        cursorColor: AppColors.darkGreen,
        decoration: InputDecoration(
          prefixIcon: iconWidget,
          filled: true,
          fillColor: Colors.white,
          suffixIcon: widget.isPassword!
              ? GestureDetector(
                  onTap: (() => setState(() {
                        isShowPass = !isShowPass;
                      })),
                  child: Icon(
                    isShowPass ? Icons.visibility : Icons.visibility_off,
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
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
            borderSide: const BorderSide(
              color: Color(0xFFF4F4F4),
              width: 0.2,
            ),
          ),
        ),
        validator: widget.validate,
      ),
    );
  }
}
