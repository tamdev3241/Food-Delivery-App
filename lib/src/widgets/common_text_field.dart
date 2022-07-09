import 'package:flutter/material.dart';

import '../constants/app_strings.dart';
import '../styles/custome_styles.dart';

class CommonTextField extends StatefulWidget {
  final String? hintText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final bool isPassword;
  final EdgeInsetsGeometry? padding;
  final double? blurRadius;
  final Offset? offset;
  final String? Function(String?)? onValidate;

  const CommonTextField(
      {Key? key,
      this.hintText,
      this.padding,
      this.blurRadius,
      this.offset,
      this.isPassword = false,
      this.controller,
      this.onValidate,
      this.prefixIcon})
      : super(key: key);

  @override
  State<CommonTextField> createState() => _CommonTextFieldState();
}

class _CommonTextFieldState extends State<CommonTextField> {
  bool isShow = false;

  @override
  void initState() {
    super.initState();
    isShow = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding ??
          const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 8.0,
          ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 234, 240, 250),
            blurRadius: widget.blurRadius ?? 25.0,
            offset: widget.offset ?? const Offset(30, 20),
          ),
        ],
      ),
      child: TextFormField(
        controller: widget.controller,
        cursorHeight: 22.0,
        obscureText: isShow,
        obscuringCharacter: ValidateMessages.hideCharacter,
        style: CustomeStyle.thinTextStyle,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: CustomeStyle.thinTextStyle,
          errorStyle: const TextStyle(fontSize: 14.0),
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.isPassword
              ? GestureDetector(
                  onTap: () => setState(() => isShow = !isShow),
                  child: Icon(
                    isShow ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                )
              : const SizedBox.shrink(),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(
              color: Color(0xFFF4F4F4),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: const BorderSide(
              color: Color(0xFFF4F4F4),
            ),
          ),
        ),
        validator: widget.onValidate,
      ),
    );
  }
}
