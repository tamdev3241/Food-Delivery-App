import 'package:flutter/material.dart';

import '../../constants/app_assets.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_strings.dart';
import '../../models/restaurant.dart';
import '../../styles/custome_styles.dart';
import '../../widgets/restaurant_grid.dart';

class NearestRestaurantList extends StatefulWidget {
  const NearestRestaurantList({Key? key}) : super(key: key);

  @override
  State<NearestRestaurantList> createState() => _NearestRestaurantListState();
}

class _NearestRestaurantListState extends State<NearestRestaurantList> {
  final List<Restaurant> nearestList = [
    Restaurant(
      image: AppAssets.nearestList[0],
      title: 'Vegan Resto',
      time: '12 Mins',
    ),
    Restaurant(
      image: AppAssets.nearestList[1],
      title: 'Healthy Food',
      time: '8 Mins',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              HomeString.nearestRestaurant,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const Spacer(),
            Text(
              ButtonTitles.viewMore,
              style: CustomeStyle.thinTextStyle.copyWith(
                color: AppColors.darkOrange,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: RestaurantGrid(children: nearestList),
        ),
      ],
    );
  }
}
