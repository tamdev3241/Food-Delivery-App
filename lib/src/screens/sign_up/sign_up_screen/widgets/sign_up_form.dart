import 'package:flutter/material.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_strings.dart';
import '../../../../helpers/string_helper.dart';
import '../../../../routes/route_names.dart';
import '../../../../styles/custome_style.dart';
import '../../../../utils/validators.dart';
import '../../../../widgets/common_button.dart';
import '../../../../widgets/common_text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passWordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isKeepSignIn = false;

  void onChangeKeepSignIn() {
    setState(() {
      isKeepSignIn = !isKeepSignIn;
    });
  }

  String? onValidateUserName(String? userName) {
    if (StringHelper.isNullOrEmpty(userName)) {
      return AuthenticaStrings.userNameRequired;
    }
    if (!Validators.isValidUserName(userName!)) {
      return AuthenticaStrings.userNameValid;
    }
    return null;
  }

  String? onValidateEmail(String? email) {
    if (StringHelper.isNullOrEmpty(email)) {
      return AuthenticaStrings.emailRequired;
    }
    if (!Validators.isValidEmaill(email!)) {
      return AuthenticaStrings.emailValid;
    }
    return null;
  }

  String? onValidatePassword(String? password) {
    if (StringHelper.isNullOrEmpty(password)) {
      return AuthenticaStrings.passwordRequired;
    }
    if (!Validators.isValidPassword(password!)) {
      return AuthenticaStrings.passwordValid;
    }
    return null;
  }

  void onSignUp() {
    FocusScope.of(context).unfocus();
    if (formKey.currentState!.validate() && isKeepSignIn) {
      Future.delayed(const Duration(milliseconds: 500)).whenComplete(
        () => Navigator.of(context).pushNamed(RouteNames.signUpProcess),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CommonTextField(
                controller: userNameController,
                hindText: AuthenticaStrings.userNameHintText,
                icon: Image.asset(
                  AppAssets.profileIcon,
                  height: 50.0,
                  width: 50.0,
                ),
                validate: (userName) => onValidateUserName(userName),
              ),
              const SizedBox(height: 13.0),
              CommonTextField(
                controller: emailController,
                hindText: AuthenticaStrings.emailHintText,
                icon: Image.asset(
                  AppAssets.emailIcon,
                  height: 50.0,
                  width: 50.0,
                ),
                validate: (email) => onValidateEmail(email),
              ),
              const SizedBox(height: 13.0),
              CommonTextField(
                controller: passWordController,
                hindText: AuthenticaStrings.passHintText,
                icon: Image.asset(
                  AppAssets.lockIcon,
                  height: 50.0,
                  width: 50.0,
                ),
                isPassword: true,
                validate: (password) => onValidatePassword(password),
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => onChangeKeepSignIn(),
                    child: Icon(
                      isKeepSignIn
                          ? Icons.check_circle_rounded
                          : Icons.check_circle_outline_rounded,
                      color: isKeepSignIn ? AppColors.darkGreen : Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    AuthenticaStrings.keepSignIn,
                    style: CustomeStyle.thinStyle.copyWith(
                      fontSize: 15.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 70.0),
              CommonButton(
                title: AuthenticaStrings.createAccount,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 20.0,
                ),
                onPressed: () => onSignUp(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    AuthenticaStrings.hasAnAccount,
                    style: TextStyle(
                      color: AppColors.darkGreen,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
