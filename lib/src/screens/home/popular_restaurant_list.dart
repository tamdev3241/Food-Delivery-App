import 'package:flutter/material.dart';

import '../../constants/app_strings.dart';
import '../../models/restaurant.dart';
import '../../widgets/restaurant_grid.dart';

class PopularRestaurantList extends StatelessWidget {
  final List<Restaurant> children;
  const PopularRestaurantList({Key? key, this.children = const []})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          HomeString.nearestRestaurant,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: RestaurantGrid(children: children),
        ),
      ],
    );
  }
}
