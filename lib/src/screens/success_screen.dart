import 'package:flutter/material.dart';

import '../constants/app_assets.dart';
import '../constants/app_strings.dart';
import '../routes/route_names.dart';
import '../styles/custome_styles.dart';
import '../widgets/common_button.dart';

class SuccessScreen extends StatelessWidget {
  final bool isSignUp;
  const SuccessScreen({Key? key, required this.isSignUp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppAssets.background,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Image.asset(AppAssets.success),
              const SizedBox(height: 20.0),
              const Text(
                SignUpProcessStrings.congrats,
                style: CustomeStyle.successBoldTextStyle,
              ),
              const SizedBox(height: 10.0),
              Text(
                isSignUp
                    ? SignUpProcessStrings.successMessage
                    : ForgetPasswordStrings.passwordResetSuccessul,
                style: Theme.of(context).textTheme.headline5,
              ),
              const Spacer(),
              CommonButton(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 40.0,
                ),
                title: isSignUp ? ButtonTitles.tryOrder : ButtonTitles.back,
                onPressed: () {
                  isSignUp
                      ? Navigator.pushNamed(context, RouteNames.home)
                      : Navigator.pop(context);
                },
              ),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
