import 'package:flutter/material.dart';

import '../../../constants/app_strings.dart';
import '../../../routes/route_names.dart';
import '../../../utils/validator.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/common_text_field.dart';
import 'login_with_social_network.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? onValidateEmail(String? email) {
    if (Validator.isNullOrEmptyString(email)) {
      return ValidateMessages.emailRequired;
    }
    if (!Validator.isValidEmaill(email!)) {
      return ValidateMessages.emailValid;
    }
    return null;
  }

  String? onValidatePassword(String? password) {
    if (Validator.isNullOrEmptyString(password)) {
      return ValidateMessages.passwordRequired;
    }
    if (!Validator.isValidPassword(password!)) {
      return ValidateMessages.passwordValid;
    }
    return null;
  }

  void onLogin() {
    FocusScope.of(context).unfocus();
    if (formKey.currentState!.validate()) {
      Navigator.pushNamed(context, RouteNames.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CommonTextField(
            controller: emailController,
            hintText: SignUpStrings.emailHint,
            onValidate: (email) => onValidateEmail(email),
          ),
          CommonTextField(
            controller: passwordController,
            hintText: SignUpStrings.passwordHint,
            onValidate: (password) => onValidatePassword(password),
            isPassword: true,
          ),
          const SizedBox(height: 20.0),
          const LoginWithSocialNetwork(),
          const SizedBox(height: 30.0),
          CommonButton(
            padding: const EdgeInsets.symmetric(
              vertical: 18.0,
              horizontal: 50.0,
            ),
            title: ButtonTitles.login,
            onPressed: () => onLogin(),
          ),
          const SizedBox(height: 40.0),
        ],
      ),
    );
  }
}
