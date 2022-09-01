import 'package:flutter/material.dart';
import '../models/restaurant.dart';

import '../styles/custome_styles.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantCard({Key? key, required this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10.0),
          Image.asset(restaurant.image, height: 100),
          Text(
            restaurant.title,
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontWeight: FontWeight.w800),
          ),
          Text(
            restaurant.time,
            style: CustomeStyle.thinTextStyle.copyWith(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
