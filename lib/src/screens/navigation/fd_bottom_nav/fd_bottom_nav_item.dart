import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/app_colors.dart';

class FDBottomNavItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final bool isActive;
  final bool isNotification;
  final int notificationCount;
  final Function()? onTap;
  const FDBottomNavItem({
    Key? key,
    required this.iconPath,
    required this.title,
    required this.onTap,
    this.isActive = false,
    this.isNotification = false,
    this.notificationCount = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var titleWidget = isActive
        ? Text(
            title,
            style: Theme.of(context).textTheme.subtitle1,
          )
        : const SizedBox.shrink();
    var notifyWidget = isNotification
        ? Container(
            alignment: Alignment.center,
            width: 15,
            height: 15,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
            child: Text(
              notificationCount != 0 ? '$notificationCount' : '',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w800,
              ),
            ),
          )
        : const SizedBox.shrink();
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: isActive
            ? const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 12.0,
              )
            : EdgeInsets.zero,
        decoration: BoxDecoration(
          color: isActive
              ? AppColors.lightgreen.withOpacity(0.1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Padding(
                  padding: isActive
                      ? EdgeInsets.zero
                      : const EdgeInsets.only(top: 5, right: 5),
                  child: SvgPicture.asset(
                    iconPath,
                    width: 25,
                    height: 25,
                    color: isActive
                        ? AppColors.darkGreen.withOpacity(0.8)
                        : AppColors.lightgreen.withOpacity(0.5),
                  ),
                ),
                notifyWidget,
              ],
            ),
            const SizedBox(width: 10.0),
            titleWidget,
          ],
        ),
      ),
    );
  }
}
