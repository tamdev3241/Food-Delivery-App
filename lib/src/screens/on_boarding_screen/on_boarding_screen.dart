import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_strings.dart';
import '../../routes/route_names.dart';
import '../../widgets/common_button.dart';
import 'widgets/on_boarding_pager.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController pageController = PageController();

  void onPageChange() {
    if (pageController.hasClients) {
      if (pageController.page!.toInt() == 0) {
        pageController.nextPage(
          duration: const Duration(milliseconds: 200),
          curve: Curves.linear,
        );
      } else {
        Navigator.pushReplacementNamed(context, RouteNames.signUp);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 650,
            child: PageView(
              controller: pageController,
              children: const [
                OnBoardingPager(
                  assetsImagePath: AppAssets.onBoarding1,
                  title: AppStrings.onBoardingTitle1,
                  subtitle: AppStrings.onBoardingSubTitle1,
                ),
                OnBoardingPager(
                  assetsImagePath: AppAssets.onBoarding2,
                  title: AppStrings.onBoardingTitle2,
                  subtitle: AppStrings.onBoardingSubTitle2,
                ),
              ],
            ),
          ),
          CommonButton(
            title: AppStrings.nextButton,
            onPressed: onPageChange,
          ),
        ],
      ),
    );
  }
}
