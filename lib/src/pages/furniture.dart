import 'package:dribble_one/src/utils/constant.dart';
import 'package:dribble_one/src/widgets/furniture/furniture_category.dart';
import 'package:dribble_one/src/widgets/title_large.dart';
import 'package:flutter/material.dart';

class Furniture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 40.0,
            ),
            child: TitleLarge(
              title: 'Furniture',
              icon: Icons.add_shopping_cart,
            ),
          ),
          buildFurnitureCategories,
        ],
      ),
    );
  }

  final buildFurnitureCategories = Container(
    height: 130.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: furnitureCategoriesList.length,
      itemBuilder: (context, int index) => Center(
            child: FurnitureCategory(
              item: furnitureCategoriesList[index],
            ),
          ),
    ),
  );
}
