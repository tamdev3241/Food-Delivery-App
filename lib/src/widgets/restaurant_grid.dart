import 'package:flutter/material.dart';
import '../models/restaurant.dart';

import 'restaurant_card.dart';

class RestaurantGrid extends StatelessWidget {
  final List<Restaurant> children;
  const RestaurantGrid({Key? key, this.children = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: 1 / 1.1,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      children:
          children.map((item) => RestaurantCard(restaurant: item)).toList(),
    );
  }
}
