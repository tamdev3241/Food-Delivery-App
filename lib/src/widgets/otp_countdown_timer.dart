import 'dart:async';

import 'package:flutter/material.dart';

import '../constants/app_strings.dart';

class CountDownTimer extends StatefulWidget {
  final int? minute;
  final int second;
  const CountDownTimer({Key? key, this.minute, required this.second})
      : super(key: key);

  @override
  State<CountDownTimer> createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer> {
  Timer? _timer;
  Duration? _duration;
  @override
  void initState() {
    super.initState();
    _duration = Duration(minutes: widget.minute ?? 0, seconds: widget.second);
    _onStartTimer();
  }

  void _onStartTimer() {
    /// The timer.periodic constructor creates the repeating timer and gives a
    /// callback au the duration that we specified.
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      int reduceSecondBy = 1;
      setState(() {
        int seconds = _duration!.inSeconds - reduceSecondBy;
        if (seconds < 0) {
          _timer!.cancel();
        } else {
          _duration = Duration(seconds: seconds);
        }
      });
    });
  }

  String strDigits(int number) => number.toString().padLeft(2, '0');
  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String minutes = strDigits(_duration!.inMinutes.remainder(60));
    String seconds = strDigits(_duration!.inSeconds.remainder(60));
    return Text(
      '${ForgetPasswordStrings.secondPageSubTitle} $minutes:$seconds',
      style: Theme.of(context).textTheme.subtitle2,
    );
  }
}
