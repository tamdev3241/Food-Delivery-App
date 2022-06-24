import 'package:flutter/material.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_strings.dart';
import 'payment_option.dart';

class PaymentRegisterPage extends StatelessWidget {
  const PaymentRegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            SignInProcessStrings.secondPageTitle,
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
        PaymentOption(
          paymentOptionIcon: Image.asset(AppAssets.paypal),
        ),
        PaymentOption(
          paymentOptionIcon: Image.asset(AppAssets.visa),
        ),
        PaymentOption(
          paymentOptionIcon: Image.asset(AppAssets.payoneer),
        )
      ],
    );
  }
}
