import 'package:dribble_one/src/utils/constant.dart';
import 'package:dribble_one/src/widgets/furniture/furniture_category.dart';
import 'package:flutter/material.dart';

class FurnitureCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        for (FurnitureCatg catg in furnitureCategoriesList)
          FurnitureCategory(
            item: catg,
          )
      ],
    );
  }
}
