import 'package:flutter/material.dart';

import '../../../constants/app_assets.dart';
import '../../../constants/app_strings.dart';

import 'fd_bottom_nav_item.dart';

class FDBottomNavigation extends StatefulWidget {
  final PageController pageController;
  const FDBottomNavigation({Key? key, required this.pageController})
      : super(key: key);

  @override
  State<FDBottomNavigation> createState() => _FDBottomNavigationState();
}

class _FDBottomNavigationState extends State<FDBottomNavigation> {
  int currentIndex = 0;

  void onChangeIndex(int index) {
    if (index != currentIndex) {
      widget.pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 200),
        curve: Curves.linear,
      );
      setState(() => currentIndex = index);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 25.0,
        vertical: 15.0,
      ),
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
      ),
      child: Row(
        children: [
          FDBottomNavItem(
            iconPath: AppAssets.homeIcon,
            title: NavigationString.homeTitle,
            isActive: currentIndex == 0,
            onTap: () => onChangeIndex(0),
          ),
          const Spacer(),
          FDBottomNavItem(
            iconPath: AppAssets.profileIcon,
            title: NavigationString.profileTitle,
            isActive: currentIndex == 1,
            onTap: () => onChangeIndex(1),
          ),
          const Spacer(),
          FDBottomNavItem(
            iconPath: AppAssets.cartIcon,
            title: NavigationString.cartTitle,
            isNotification: true,
            isActive: currentIndex == 2,
            notificationCount: 7,
            onTap: () => onChangeIndex(2),
          ),
          const Spacer(),
          FDBottomNavItem(
            iconPath: AppAssets.chatIcon,
            title: NavigationString.chatTitle,
            isNotification: true,
            isActive: currentIndex == 3,
            onTap: () => onChangeIndex(3),
          )
        ],
      ),
    );
  }
}
