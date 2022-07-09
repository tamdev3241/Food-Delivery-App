import 'package:flutter/material.dart';

import '../../../../constants/app_strings.dart';
import '../../../../widgets/common_text_field.dart';

class ResetPasswordPage extends StatefulWidget {
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final GlobalKey<FormState> formKey;
  final String? Function(String? password)? onValidatePassword;
  final String? Function(String? confirmPassword)? onValidateConfirmPassword;
  const ResetPasswordPage({
    Key? key,
    required this.passwordController,
    required this.confirmPasswordController,
    required this.formKey,
    this.onValidatePassword,
    this.onValidateConfirmPassword,
  }) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Text(
              ForgetPasswordStrings.thirdPageTitle,
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
            child: Text(
              ForgetPasswordStrings.firstAndThirdPageSubTitle,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          const SizedBox(height: 10.0),
          CommonTextField(
            controller: widget.passwordController,
            hintText: ForgetPasswordStrings.newPasswordHint,
            isPassword: true,
            onValidate: widget.onValidatePassword,
          ),
          CommonTextField(
            controller: widget.confirmPasswordController,
            hintText: ForgetPasswordStrings.confirmPasswordHint,
            isPassword: true,
            onValidate: widget.onValidateConfirmPassword,
          ),
        ],
      ),
    );
  }
}
