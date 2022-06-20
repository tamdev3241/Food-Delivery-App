import 'package:flutter/material.dart';

class OnBoardingPager extends StatelessWidget {
  final String assetsImagePath;
  final String title;
  final String subtitle;
  const OnBoardingPager({
    Key? key,
    required this.assetsImagePath,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 450,
          child: Image.asset(
            assetsImagePath,
            fit: BoxFit.fill,
          ),
        ),
        const Spacer(),
        Text(
          title,
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20.0),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.subtitle2,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
