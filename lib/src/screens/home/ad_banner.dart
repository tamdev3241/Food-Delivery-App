import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';
import '../../styles/custome_styles.dart';
import '../../widgets/common_button.dart';

class AdBanner extends StatelessWidget {
  const AdBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(
        vertical: 30,
        horizontal: 30,
      ),
      decoration: BoxDecoration(
        color: AppColors.darkGreen,
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage(
            AppAssets.homeBanner,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                HomeString.bannerLabel,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 10),
              CommonButton(
                color: Colors.white,
                boderRadius: 10.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 10,
                ),
                title: ButtonTitles.buyNow,
                titleStyle: CustomeStyle.commonButtonTextStyle.copyWith(
                  color: AppColors.darkGreen,
                  fontSize: 13,
                ),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }
}
