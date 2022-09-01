import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../chat/chat_screen.dart';
import '../home/home_screen.dart';
import '../my_cart/my_cart_screen.dart';
import '../profile/profile_screen.dart';
import 'fd_bottom_nav/fd_bottom_nav.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 249, 247, 247),
          image: DecorationImage(
            image: AssetImage(AppAssets.background1),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView(
              controller: pageController,
              children: const [
                HomeScreen(),
                ProfileScreen(),
                MyCartScreen(),
                ChatScreen()
              ],
            ),
            FDBottomNavigation(pageController: pageController),
          ],
        ),
      ),
    );
  }
}
