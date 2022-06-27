import 'package:flutter/material.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_strings.dart';
import '../option_item.dart';

class UploadPhotoPage extends StatefulWidget {
  const UploadPhotoPage({Key? key}) : super(key: key);

  @override
  State<UploadPhotoPage> createState() => _UploadPhotoPageState();
}

class _UploadPhotoPageState extends State<UploadPhotoPage> {
  bool isChoose = false;

  void onChange() => setState(() => isChoose = !isChoose);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: Text(
            SignUpProcessStrings.thirdPageTitle,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
          child: Text(
            SignUpProcessStrings.subtitle,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        isChoose
            ? Center(
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset(AppAssets.photoTemp),
                    GestureDetector(
                      onTap: () => onChange(),
                      child: Container(
                        margin: const EdgeInsets.only(top: 20.0, right: 10.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.6),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.close_rounded,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Column(
                children: [
                  OptionItem(
                    offset: const Offset(0, 0),
                    onTapped: () => onChange(),
                    child: Column(
                      children: [
                        Image.asset(AppAssets.gallery),
                        const SizedBox(height: 10.0),
                        Text(
                          SignUpProcessStrings.fromGallery,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  OptionItem(
                    offset: const Offset(0, 0),
                    onTapped: () => onChange(),
                    child: Column(
                      children: [
                        Image.asset(AppAssets.camera),
                        const SizedBox(height: 10.0),
                        Text(
                          SignUpProcessStrings.fromCamera,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
