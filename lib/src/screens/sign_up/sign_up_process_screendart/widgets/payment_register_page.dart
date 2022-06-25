import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/constants/app_colors.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_strings.dart';
import 'payment_option_item.dart';

class PaymentRegisterPage extends StatefulWidget {
  const PaymentRegisterPage({Key? key}) : super(key: key);

  @override
  State<PaymentRegisterPage> createState() => _PaymentRegisterPageState();
}

class _PaymentRegisterPageState extends State<PaymentRegisterPage> {
  int chooseIndex = -1;

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
        SignUpInfoOptionItem(
          paymentOptionIcon: Image.asset(AppAssets.paypal),
          borderColor: chooseIndex == 0 ? AppColors.darkGreen : null,
          onTapped: () => setState(() => chooseIndex = 0),
        ),
        SignUpInfoOptionItem(
          paymentOptionIcon: Image.asset(AppAssets.visa),
          borderColor: chooseIndex == 1 ? AppColors.darkGreen : null,
          onTapped: () => setState(() => chooseIndex = 1),
        ),
        SignUpInfoOptionItem(
          paymentOptionIcon: Image.asset(AppAssets.payoneer),
          borderColor: chooseIndex == 2 ? AppColors.darkGreen : null,
          onTapped: () => setState(() => chooseIndex = 2),
        )
      ],
    );
  }
}
