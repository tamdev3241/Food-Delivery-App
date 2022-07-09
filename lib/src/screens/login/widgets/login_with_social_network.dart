import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_strings.dart';
import '../../../routes/route_names.dart';
import '../../../styles/custome_styles.dart';
import 'social_button.dart';

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
          onTap: () => Navigator.pushNamed(context, RouteNames.forgotPassword),
          child: const Text(
            LoginStrings.forgotPassword,
            style: CustomeStyle.thinUnderLineStyle,
          ),
        ),
      ],
    );
  }
}
