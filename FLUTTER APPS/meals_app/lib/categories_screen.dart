import 'package:flutter/material.dart';
import 'package:meals_app/dummy_data.dart';
import './dummy_data.dart';
import './category_item.dart';
class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES
          .map(
              (catData) => CategoryItem(
                catData.title,
                catData.color),
              ).toList(), // Since map returns an iterable we need to convert it to list explicitly

      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2, // Defines how children should be sized according to their height and wisth relation
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,

        ),
    );
  }
}
