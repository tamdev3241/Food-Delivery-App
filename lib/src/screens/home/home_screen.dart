import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';
import '../../styles/custome_styles.dart';
import '../filters/filters_search.dart';
import 'ad_banner.dart';
import 'nearest_restaurant_list.dart';
import 'popular_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFilter = false;

  void setFillter() {
    setState(() => isFilter = !isFilter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      HomeString.title,
                      style: Theme.of(context)
                          .textTheme
                          .headline3!
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6.0,
                            vertical: 6.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                blurRadius: 15.0,
                                offset: const Offset(10, 18),
                              ),
                            ],
                          ),
                          child: Image.asset(
                            AppAssets.notificationIcon,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60.0,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.asset(AppAssets.searchIcon),
                          ),
                          hintText: HomeString.hintSearch,
                          hintStyle: CustomeStyle.thinTextStyle.copyWith(
                            color: AppColors.darkOrange.withOpacity(0.5),
                          ),
                          fillColor: AppColors.orange,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(
                              color: AppColors.orange,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(
                              color: AppColors.orange,
                            ),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: setFillter,
                      child: Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.orange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Image.asset(AppAssets.filterIcon),
                      ),
                    ),
                  ],
                ),
              ),
              if (isFilter)
                const FiltterSearch()
              else ...[
                const AdBanner(),
                const NearestRestaurantList(),
                const PopularMenu(),
                const SizedBox(height: 60.0)
              ],
            ],
          ),
        ),
      ),
    );
  }
}
