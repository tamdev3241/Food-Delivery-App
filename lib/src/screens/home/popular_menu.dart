import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';
import '../../models/menu_item.dart';
import '../../styles/custome_styles.dart';
import '../../widgets/popular_menu_list.dart';

class PopularMenu extends StatefulWidget {
  const PopularMenu({Key? key}) : super(key: key);

  @override
  State<PopularMenu> createState() => _PopularMenuState();
}

class _PopularMenuState extends State<PopularMenu> {
  List<RestaurantMenuItem> popularMenu = [
    RestaurantMenuItem(
      image: AppAssets.popularMenu[0],
      subTitle: 'Warung Herbal',
      title: 'Herbal Pancake',
      price: 7,
    ),
    RestaurantMenuItem(
      image: AppAssets.popularMenu[1],
      title: 'Fruit salad',
      subTitle: 'Wijie Resto',
      price: 5,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              HomeString.popularMenu,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const Spacer(),
            Text(
              ButtonTitles.viewMore,
              style: CustomeStyle.thinTextStyle
                  .copyWith(color: AppColors.darkOrange),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: PopularMenuList(children: popularMenu),
        ),
      ],
    );
  }
}
