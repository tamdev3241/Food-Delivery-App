import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_strings.dart';
import '../../../routes/route_names.dart';
import '../../../widgets/common_button.dart';
import 'widgets/payment_register_page.dart';
import 'widgets/update_photo_page.dart';
import 'widgets/user_bio_page.dart';

class SignUpProccessScreen extends StatelessWidget {
  const SignUpProccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    const List<Widget> pages = [
      UserBioPage(),
      PaymentRegisterPage(),
      UpdatePhotoProfilePage(),
    ];
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(AppAssets.signUpBackground),
        )),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: MaterialButton(
                          padding: const EdgeInsets.all(12.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: AppColors.orange,
                          elevation: 0.0,
                          minWidth: 0.0,
                          onPressed: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.arrow_back_ios_rounded,
                            size: 22.0,
                            color: AppColors.darkOrange,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height - 200,
                      child: PageView(
                        physics: const NeverScrollableScrollPhysics(),
                        controller: pageController,
                        children: pages,
                      ),
                    ),
                    CommonButton(
                      title: AppStrings.nextButton,
                      onPressed: () {
                        if (pageController.page!.toInt() < pages.length - 1) {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.linear,
                          );
                        } else if (pageController.page!.toInt() ==
                            pages.length - 1) {
                          Navigator.pushReplacementNamed(
                            context,
                            RouteNames.home,
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
