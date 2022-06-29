import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String title;
  final Function()? onTapped;
  final EdgeInsetsGeometry? padding;
  const SocialButton({
    Key? key,
    required this.iconPath,
    required this.title,
    this.onTapped,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        padding: padding ??
            const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 30.0,
            ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: Colors.grey.shade200,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 222, 232, 250),
              blurRadius: 30.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(iconPath),
            const SizedBox(width: 10.0),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1!.copyWith(
                    fontSize: 16.0,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
