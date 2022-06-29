import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/constants/app_assets.dart';
import 'package:food_delivery_app/src/constants/app_strings.dart';
import 'package:food_delivery_app/src/screens/login/widgets/social_button.dart';
import 'package:food_delivery_app/src/styles/custome_styles.dart';

class LoginWithSocialNetwork extends StatelessWidget {
  const LoginWithSocialNetwork({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          LoginStrings.loginWith,
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocialButton(
                iconPath: AppAssets.fakebookIcon,
                title: LoginStrings.facebookTitile,
                onTapped: () {},
              ),
              SocialButton(
                iconPath: AppAssets.googleIcon,
                title: LoginStrings.googleTitle,
                padding: const EdgeInsets.symmetric(
                  vertical: 15.0,
                  horizontal: 38.0,
                ),
                onTapped: () {},
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            ///
          },
          child: const Text(
            LoginStrings.forgotPassword,
            style: CustomeStyle.thinUnderLineStyle,
          ),
        ),
      ],
    );
  }
}
