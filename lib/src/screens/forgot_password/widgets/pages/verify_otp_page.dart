import 'package:flutter/material.dart';

import '../../../../constants/app_strings.dart';
import '../../../../widgets/custom_card_item.dart';
import '../../../../widgets/otp_countdown_timer.dart';

class OTPVerificationPage extends StatefulWidget {
  const OTPVerificationPage({Key? key}) : super(key: key);

  @override
  State<OTPVerificationPage> createState() => _OTPVerificationPageState();
}

class _OTPVerificationPageState extends State<OTPVerificationPage> {
  /// Here, We use a list with temprary data.
  List<String> otpCode = ['_', '_', '_', '_'];

  @override
  void initState() {
    super.initState();

    /// Delay four seconds and then update otp code with new data.
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        setState(() => otpCode = ['1', '9', '2', '3']);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: Text(
            ForgetPasswordStrings.secondPageTitle,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: CountDownTimer(minute: 1, second: 30),
        ),
        const SizedBox(height: 20.0),
        CustomCardItem(
          offset: const Offset(0, 25),
          blurRadius: 40.0,
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: otpCode
                .map(
                  (e) => Text(e, style: Theme.of(context).textTheme.headline4),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
