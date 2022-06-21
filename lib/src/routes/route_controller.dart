import 'package:flutter/cupertino.dart';

import '../screens/not_found_screen.dart';
import '../screens/on_boarding_screen/on_boarding_screen.dart';
import '../screens/sign_up_proccess_screen.dart';
import '../screens/sign_up_screen/sign_up_screen.dart';
import '../screens/splash_screen.dart';
import 'route_names.dart';

class RouteController {
  CupertinoPageRoute pageRoute(RouteSettings settings) {
    return CupertinoPageRoute(builder: ((context) {
      switch (settings.name) {
        case RouteNames.initial:
          return const SplashScreen();
        case RouteNames.onBoarding:
          return const OnBoardingScreen();
        case RouteNames.signUp:
          return const SignUpScreen();
        case RouteNames.signUpProcess:
          return const SignUpProccessScreen();
        default:
          return const NotFoundScreen();
      }
    }));
  }
}
