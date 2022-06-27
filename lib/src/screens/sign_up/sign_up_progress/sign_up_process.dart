import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_strings.dart';
import '../../../routes/route_names.dart';
import '../../../widgets/common_button.dart';
import 'widgets/pages/bio_page.dart';
import 'widgets/pages/payment_method_page.dart';
import 'widgets/pages/set_location_page.dart';
import 'widgets/pages/upload_photo_page.dart';

class SignUpProcessScreen extends StatefulWidget {
  const SignUpProcessScreen({Key? key}) : super(key: key);

  @override
  State<SignUpProcessScreen> createState() => _SignUpProcessScreenState();
}

class _SignUpProcessScreenState extends State<SignUpProcessScreen> {
  final PageController pageController = PageController();
  final List<Widget> pages = const [
    UserBioPage(),
    PaymentMethodPage(),
    UploadPhotoPage(),
    SetLocationPage(),
  ];

  void onNextPage() {
    if (pageController.hasClients) {
      if (pageController.page!.toInt() < pages.length - 1) {
        pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.linear,
        );
      } else {
        Navigator.pushNamed(
          context,
          RouteNames.success,
          arguments: SignUpProcessStrings.successMessage,
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AppAssets.background1,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MaterialButton(
                    onPressed: () => Navigator.pop(context),
                    color: AppColors.orange,
                    elevation: 0.0,
                    minWidth: 0.0,
                    padding: const EdgeInsets.all(15.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColors.darkOrange,
                      size: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 200,
                child: PageView(
                  controller: pageController,
                  children: pages,
                ),
              ),
              CommonButton(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 60.0,
                ),
                title: ButtonTitles.next,
                onPressed: onNextPage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
