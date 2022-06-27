import 'package:flutter/material.dart';

import '../../../../../constants/app_strings.dart';
import '../../../../../widgets/common_text_field.dart';

class UserBioPage extends StatelessWidget {
  const UserBioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: Text(
            SignUpProcessStrings.firstPageTitle,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
          child: Text(
            SignUpProcessStrings.subtitle,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const CommonTextField(
          offset: Offset(0, 0),
          blurRadius: 30.0,
          hintText: SignUpProcessStrings.firstNameHint,
        ),
        const CommonTextField(
          offset: Offset(0, 0),
          blurRadius: 30.0,
          hintText: SignUpProcessStrings.lastNameHint,
        ),
        const CommonTextField(
          offset: Offset(0, 0),
          blurRadius: 30.0,
          hintText: SignUpProcessStrings.phoneHint,
        ),
      ],
    );
  }
}
