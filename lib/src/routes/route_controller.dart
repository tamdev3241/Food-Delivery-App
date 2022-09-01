import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/src/screens/navigation/navigation_screen.dart';

import '../screens/chat/chat_screen.dart';
import '../screens/forgot_password/forgot_password_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/my_cart/my_cart_screen.dart';
import '../screens/not_found_screen.dart';
import '../screens/on_boarding_screen/on_boarding_screen.dart';
import '../screens/profile/profile_screen.dart';
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
          return SuccessScreen(isSignUp: settings.arguments as bool);
        case RouteNames.login:
          return const LoginScreen();
        case RouteNames.forgotPassword:
          return const ForgotPasswordScreen();
        case RouteNames.home:
          return const NavigationScreen();
        default:
          return const NotFoundScreen();
      }
    }));
  }
}
