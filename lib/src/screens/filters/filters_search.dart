import 'package:flutter/material.dart';

import '../../constants/app_strings.dart';
import 'filter_section.dart';

class FiltterSearch extends StatelessWidget {
  const FiltterSearch({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> typeFilters = ['Restaurant', 'Menu'];
    List<String> locationFilters = ['1 Km', '>10 Km', '<10 Km'];
    List<String> foodFilters = [
      'Cake',
      'Soup',
      'Main Course',
      'Appetizer',
      'Dessert',
    ];
    return Column(
      children: [
        FilterSection(title: FilterString.type, filters: typeFilters),
        FilterSection(title: FilterString.location, filters: locationFilters),
        FilterSection(title: FilterString.food, filters: foodFilters),
      ],
    );
  }
}
