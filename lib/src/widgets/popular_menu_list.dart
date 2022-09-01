import 'package:flutter/material.dart';
import '../models/menu_item.dart';
import 'restaurant_menu_card.dart';

class PopularMenuList extends StatelessWidget {
  final List<RestaurantMenuItem> children;
  const PopularMenuList({Key? key, this.children = const []}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: children.length,
      itemBuilder: (_, index) => RestaurantMenuItemCard(menu: children[index]),
    );
  }
}
