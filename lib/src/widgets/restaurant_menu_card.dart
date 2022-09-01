import 'package:flutter/material.dart';
import '../models/menu_item.dart';

class RestaurantMenuItemCard extends StatelessWidget {
  final RestaurantMenuItem menu;
  const RestaurantMenuItemCard({Key? key, required this.menu})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 20.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 0.0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Image.asset(menu.image),
            const SizedBox(width: 20.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(menu.title),
                const SizedBox(height: 5),
                Text(
                  menu.subTitle,
                  style: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: Colors.grey[300],
                        fontWeight: FontWeight.w400,
                      ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                '\$${menu.price}',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.orange,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
