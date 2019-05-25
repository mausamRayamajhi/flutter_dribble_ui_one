import 'package:dribble_one/src/widgets/furniture/furniture_categories.dart';
import 'package:dribble_one/src/widgets/title_large.dart';
import 'package:flutter/material.dart';

class Furniture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 30.0,
        ),
        child: Column(
          //mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TitleLarge(
              title: 'Furniture',
              icon: Icons.add_shopping_cart,
            ),
            SizedBox(
              height: 30.0,
            ),
            FurnitureCategories(),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
