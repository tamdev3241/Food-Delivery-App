import 'package:flutter/material.dart';

import '../../../../constants/app_assets.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_strings.dart';
import '../../../../widgets/custom_card_item.dart';

class ContractMethodPage extends StatefulWidget {
  const ContractMethodPage({Key? key}) : super(key: key);

  @override
  State<ContractMethodPage> createState() => _ContractMethodPageState();
}

class _ContractMethodPageState extends State<ContractMethodPage> {
  int _isChooseMethod = -1;

  void _setContactMethod(int index) {
    setState(() => _isChooseMethod = index);
  }

  @override
  Widget build(BuildContext context) {
    const SizedBox spacingBetweenTitleAndSubTitle = SizedBox(height: 10.0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: Text(
            ForgetPasswordStrings.firstPageTitle,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: Text(
            ForgetPasswordStrings.firstAndThirdPageSubTitle,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const SizedBox(height: 10.0),
        CustomCardItem(
          offset: const Offset(0, 0),
          boderColor: _isChooseMethod == 0 ? AppColors.darkGreen : null,
          padding: const EdgeInsets.all(25.0),
          onTapped: () {
            if (_isChooseMethod != 0) {
              _setContactMethod(0);
            }
          },
          child: Row(
            children: [
              Image.asset(AppAssets.smsIcon),
              const SizedBox(width: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ForgetPasswordStrings.viaSMS,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.grey, fontWeight: FontWeight.w400),
                  ),
                  spacingBetweenTitleAndSubTitle,
                  Text.rich(
                    TextSpan(text: '●●●●  ●●●●  ', children: [
                      TextSpan(
                        text: '4235',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ]),
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20.0),
        CustomCardItem(
          boderColor: _isChooseMethod == 1 ? AppColors.darkGreen : null,
          offset: const Offset(0, 0),
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          onTapped: () {
            if (_isChooseMethod != 1) {
              _setContactMethod(1);
            }
          },
          child: Row(
            children: [
              Image.asset(AppAssets.mailIcon),
              const SizedBox(width: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ForgetPasswordStrings.viaGmail,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  spacingBetweenTitleAndSubTitle,
                  Text.rich(
                    TextSpan(text: '●●●●  ', children: [
                      TextSpan(
                        text: ForgetPasswordStrings.gmailFormat,
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                    ]),
                    style: Theme.of(context).textTheme.bodyText1,
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
