import 'package:flutter/material.dart';

import '../../../../constants/app_strings.dart';
import '../../../../widgets/common_text_field.dart';

class UserBioPage extends StatelessWidget {
  const UserBioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            SignInProcessStrings.firstPageTitle,
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
        const CommonTextField(
          hindText: SignInProcessStrings.firstNameHintText,
          padding: EdgeInsets.all(10.0),
        ),
        const CommonTextField(
          hindText: SignInProcessStrings.lastNameHintText,
          padding: EdgeInsets.all(10.0),
        ),
        const CommonTextField(
          hindText: SignInProcessStrings.phoneHintText,
          padding: EdgeInsets.all(10.0),
        ),
      ],
    );
  }
}
