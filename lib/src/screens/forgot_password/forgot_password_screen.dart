import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';
import '../../routes/route_names.dart';
import '../../utils/validator.dart';
import '../../widgets/common_button.dart';
import 'widgets/pages/contract_methob_page.dart';
import 'widgets/pages/reset_password_page.dart';
import 'widgets/pages/verify_otp_page.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final bool isSignUp = false;
  final PageController pageController = PageController();
  final GlobalKey<FormState> resetPasswordformKey = GlobalKey<FormState>();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  String? validatePassword(String? password) {
    if (Validator.isNullOrEmptyString(password)) {
      return ValidateMessages.passwordRequired;
    } else {
      if (!Validator.isValidPassword(password!)) {
        return ValidateMessages.passwordValid;
      }
    }
    return null;
  }

  String? validateConfirmPassword(String? confirmPassword) {
    if (Validator.isNullOrEmptyString(confirmPassword)) {
      return ValidateMessages.confirmPasswordRequired;
    } else {
      if (Validator.isPasswordAndConfirmNotMatch(
          newPasswordController.text, confirmPassword!)) {
        return ValidateMessages.confirmAndPasswordNotMatch;
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      const ContractMethodPage(),
      const OTPVerificationPage(),
      ResetPasswordPage(
        passwordController: newPasswordController,
        confirmPasswordController: confirmPasswordController,
        formKey: resetPasswordformKey,
        onValidatePassword: validatePassword,
        onValidateConfirmPassword: validateConfirmPassword,
      ),
    ];
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppAssets.background1,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: MaterialButton(
                      onPressed: () => Navigator.pop(context),
                      color: AppColors.orange,
                      elevation: 0.0,
                      minWidth: 0.0,
                      padding: const EdgeInsets.all(15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: AppColors.darkOrange,
                        size: 20.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height - 220,
                  child: PageView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: pageController,
                    children: pages,
                  ),
                ),
                CommonButton(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 60.0,
                  ),
                  title: ButtonTitles.next,
                  onPressed: () {
                    if (pageController.hasClients) {
                      /// Move next page If the current page is not the last page.
                      /// If the last page, we make to validate the reset password
                      /// form. If validated then move to the success notification
                      /// screen.
                      if (pageController.page!.toInt() < pages.length - 1) {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.linear,
                        );
                      } else {
                        if (resetPasswordformKey.currentState!.validate()) {
                          Navigator.pushReplacementNamed(
                            context,
                            RouteNames.success,
                            arguments: isSignUp,
                          );
                        }
                      }
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
