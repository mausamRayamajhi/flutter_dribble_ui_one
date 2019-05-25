import 'package:dribble_one/src/utils/constant.dart';
import 'package:dribble_one/src/widgets/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          for (Catg catg in listProfileCategories)
            Category(
              catg: catg,
            )
        ],
      ),
    );
  }
}
