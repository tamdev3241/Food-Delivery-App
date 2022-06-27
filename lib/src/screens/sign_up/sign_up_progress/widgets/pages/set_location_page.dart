import 'package:flutter/material.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_strings.dart';
import '../../../../../styles/custome_styles.dart';
import '../../../../../widgets/common_button.dart';
import '../option_item.dart';

class SetLocationPage extends StatelessWidget {
  const SetLocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: Text(
            SignUpProcessStrings.fourPageTitle,
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
        OptionItem(
          offset: const Offset(5, 15),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.asset(AppAssets.pin),
                    const SizedBox(width: 15.0),
                    Text(
                      SignUpProcessStrings.locationTitle,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 16.0,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20.0),
              Row(
                children: [
                  Expanded(
                    child: CommonButton(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      color: const Color(0xFFF6F6F6),
                      title: ButtonTitles.setLocation,
                      titleStyle: CustomeStyle.commonButtonTextStyle.copyWith(
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
