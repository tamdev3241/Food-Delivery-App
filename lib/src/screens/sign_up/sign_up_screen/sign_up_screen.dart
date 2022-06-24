import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_strings.dart';
import '../../../widgets/logo_app.dart';
import 'widgets/sign_up_form.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                AppAssets.background,
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const LogoApp(),
                const SizedBox(height: 10.0),
                Text(
                  AuthenticaStrings.signUpTitle,
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(height: 25.0),
                const SignUpForm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
