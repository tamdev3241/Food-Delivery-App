import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/src/screens/login/login_screen.dart';

import '../screens/home/home_screen.dart';
import '../screens/not_found_screen.dart';
import '../screens/on_boarding_screen/on_boarding_screen.dart';
import '../screens/sign_up/sign_up_progress/sign_up_process.dart';
import '../screens/sign_up/sign_up_screen.dart';
import '../screens/splash_screen.dart';
import '../screens/success_screen.dart';
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
          return const SignUpProcessScreen();
        case RouteNames.success:
          return SuccessScreen(message: (settings.arguments as String));
        case RouteNames.login:
          return const LoginScreen();
        case RouteNames.home:
          return const HomeScreen();
        default:
          return const NotFoundScreen();
      }
    }));
  }
}
