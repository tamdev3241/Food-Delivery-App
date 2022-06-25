import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/constants/app_assets.dart';
import 'package:food_delivery_app/src/constants/app_strings.dart';
import 'package:food_delivery_app/src/constants/contants.dart';
import 'package:food_delivery_app/src/routes/route_names.dart';
import 'package:food_delivery_app/src/styles/custome_style.dart';
import 'package:food_delivery_app/src/widgets/common_button.dart';

class SignUpSuccessScreen extends StatelessWidget {
  final String message;
  const SignUpSuccessScreen({
    Key? key,
    this.message = '',
  }) : super(key: key);

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
              const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                child: Text(
                  SignInProcessStrings.congrats,
                  style: CustomeStyle.successBoldStyle,
                ),
              ),
              Text(
                message,
                style: Theme.of(context).textTheme.headline5,
              ),
              const Spacer(),
              CommonButton(
                title: ButtonStrings.tryOrder,
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 40.0,
                ),
                onPressed: () => Future.delayed(AppContants.defaultMoveDuration)
                    .whenComplete(
                  () => Navigator.pushReplacementNamed(
                    context,
                    RouteNames.home,
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
