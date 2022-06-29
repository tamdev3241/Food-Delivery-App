import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/screens/login/widgets/login_form.dart';
import 'package:food_delivery_app/src/widgets/logo.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
              children: [
                const SizedBox(height: 40.0),
                const LogoApp(),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
                  child: Text(
                    LoginStrings.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
