import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../styles/custome_styles.dart';

class FilterSection extends StatelessWidget {
  final String title;
  final List<String> filters;
  const FilterSection({
    super.key,
    required this.title,
    this.filters = const [],
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(title, style: Theme.of(context).textTheme.bodyText2),
          ),
          Wrap(
            spacing: 20.0,
            runSpacing: 10.0,
            children: filters
                .map((filter) => ActionChip(
                      label: Text(
                        filter,
                        style: CustomeStyle.thinTextStyle.copyWith(
                          color: AppColors.darkOrange,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      backgroundColor: AppColors.orange,
                      onPressed: () {},
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
