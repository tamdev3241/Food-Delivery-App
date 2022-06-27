import 'package:flutter/material.dart';

import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_strings.dart';
import '../option_item.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  int methodIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: Text(
            SignUpProcessStrings.secondPageTitle,
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
          onTapped: () => setState(() => methodIndex = 0),
          boderColor: methodIndex == 0 ? AppColors.darkGreen : null,
          child: Image.asset(AppAssets.paypal),
        ),
        const SizedBox(height: 20.0),
        OptionItem(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          onTapped: () => setState(() => methodIndex = 1),
          boderColor: methodIndex == 1 ? AppColors.darkGreen : null,
          child: Image.asset(AppAssets.visa),
        ),
        const SizedBox(height: 20.0),
        OptionItem(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          boderColor: methodIndex == 2 ? AppColors.darkGreen : null,
          onTapped: () => setState(() => methodIndex = 2),
          child: Image.asset(AppAssets.payoneer),
        ),
      ],
    );
  }
}
