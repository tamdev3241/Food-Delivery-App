import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/screens/sign_up/sign_up_process_screendart/widgets/payment_option_item.dart';
import 'package:food_delivery_app/src/styles/custome_style.dart';
import 'package:food_delivery_app/src/widgets/common_button.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_strings.dart';

class SetLocationPage extends StatelessWidget {
  const SetLocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          SignInProcessStrings.fourPageTitle,
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
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 230, 237, 250),
              blurRadius: 15.0,
              offset: Offset(5, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Image.asset(AppAssets.pin),
                  ),
                  Text(
                    'Your location',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 17.0,
                        ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: CommonButton(
                    title: 'Set Location',
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    titleStyle: CustomeStyle.commonButtonTextStyle.copyWith(
                      color: Colors.black,
                      fontSize: 15.0,
                    ),
                    onPressed: () {},
                    color: const Color(0xFFF6F6F6),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ]);
  }
}
