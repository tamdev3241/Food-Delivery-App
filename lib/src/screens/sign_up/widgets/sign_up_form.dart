import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_strings.dart';
import '../../../routes/route_names.dart';
import '../../../styles/custome_styles.dart';
import '../../../utils/validator.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/common_text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isKeepSignIn = false;

  String? onValidateUserName(String? username) {
    if (Validator.isNullOrEmptyString(username)) {
      return ValidateMessages.userNameRequired;
    }
    if (!Validator.isValidUserName(username!)) {
      return ValidateMessages.userNameValid;
    }
    return null;
  }

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

  void onSignUp() {
    FocusScope.of(context).unfocus();
    if (formKey.currentState!.validate() && isKeepSignIn) {
      Navigator.pushNamed(context, RouteNames.signUpProcess);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CommonTextField(
            controller: userNameController,
            hintText: SignUpStrings.userNameHint,
            prefixIcon: Image.asset(AppAssets.profile),
            onValidate: (username) => onValidateUserName(username),
          ),
          CommonTextField(
            controller: emailController,
            hintText: SignUpStrings.emailHint,
            prefixIcon: Image.asset(AppAssets.message),
            onValidate: (email) => onValidateEmail(email),
          ),
          CommonTextField(
            controller: passwordController,
            hintText: SignUpStrings.passwordHint,
            prefixIcon: Image.asset(AppAssets.lock),
            onValidate: (password) => onValidatePassword(password),
            isPassword: true,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 5.0),
                child: GestureDetector(
                  onTap: () => setState(() => isKeepSignIn = !isKeepSignIn),
                  child: Icon(
                    isKeepSignIn
                        ? Icons.check_circle_rounded
                        : Icons.check_circle_outline_rounded,
                    color: isKeepSignIn ? AppColors.darkGreen : Colors.grey,
                    size: 25.0,
                  ),
                ),
              ),
              const Text(
                SignUpStrings.keepSignIn,
                style: CustomeStyle.thinTextStyle,
              ),
            ],
          ),
          const SizedBox(height: 50.0),
          CommonButton(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 30.0,
            ),
            title: ButtonTitles.signUp,
            onPressed: () => onSignUp(),
          ),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, RouteNames.login),
            child: const Text(
              SignUpStrings.haveAnAccount,
              style: CustomeStyle.thinUnderLineStyle,
            ),
          ),
        ],
      ),
    );
  }
}
