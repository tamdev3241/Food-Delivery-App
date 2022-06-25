import 'package:flutter/material.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_strings.dart';
import 'payment_option_item.dart';

class UpdatePhotoProfilePage extends StatefulWidget {
  const UpdatePhotoProfilePage({Key? key}) : super(key: key);

  @override
  State<UpdatePhotoProfilePage> createState() => _UpdatePhotoProfilePageState();
}

class _UpdatePhotoProfilePageState extends State<UpdatePhotoProfilePage> {
  bool isUpdated = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            SignInProcessStrings.thirdPageTitle,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            SignInProcessStrings.pageSubTitle,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        isUpdated
            ? Center(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset(AppAssets.avatar),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: MaterialButton(
                        onPressed: () => setState(() => isUpdated = !isUpdated),
                        color: Colors.white.withOpacity(0.5),
                        shape: const CircleBorder(),
                        elevation: 0.0,
                        child: const Icon(
                          Icons.close_rounded,
                          size: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Column(
                children: [
                  SignUpInfoOptionItem(
                    paymentOptionIcon: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppAssets.galerry,
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          SignInProcessStrings.galleryOption,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                    onTapped: () => setState(() => isUpdated = !isUpdated),
                  ),
                  SignUpInfoOptionItem(
                    paymentOptionIcon: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          AppAssets.camera,
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          SignInProcessStrings.cameraOption,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                    onTapped: () => setState(() => isUpdated = !isUpdated),
                  ),
                ],
              ),
      ],
    );
  }
}
