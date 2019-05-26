import 'package:dribble_one/src/utils/constant.dart';
import 'package:dribble_one/src/widgets/furniture/bottomItem.dart';
import 'package:dribble_one/src/widgets/furniture/furniture_category.dart';
import 'package:dribble_one/src/widgets/furniture/lamp.dart';
import 'package:dribble_one/src/widgets/title_large.dart';
import 'package:dribble_one/src/widgets/title_small.dart';
import 'package:flutter/material.dart';

class Furniture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Material(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 20.0,
            ),
            child: TitleLarge(
              title: 'Furniture',
              icon: Icons.add_shopping_cart,
            ),
          ),
          buildFurnitureCategories,
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: TitleSmall(
              subTitle: 'Good quality item',
              title: 'Modern',
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          buildLampsWithSlider(),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: TitleSmall(
              subTitle: 'In recent month',
              title: 'Popular',
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          BottomItem(),
        ],
      ),
    );
  }

  Container buildLampsWithSlider() {
    return Container(
      //color: Colors.yellow,
      height: 350,
      child: Stack(
        children: <Widget>[
          buildLamps,
          Positioned(
            bottom: 40.0,
            right: 50.0,
            child: Row(
              children: <Widget>[
                Container(
                  height: 6.0,
                  width: 6.0,
                  decoration: BoxDecoration(
                    color: furnitureCateDisableColor,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Container(
                  height: 5.0,
                  width: 20.0,
                  decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.circular(10.0)),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Container(
                  height: 6.0,
                  width: 6.0,
                  decoration: BoxDecoration(
                    color: furnitureCateDisableColor,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                Container(
                  height: 6.0,
                  width: 6.0,
                  decoration: BoxDecoration(
                    color: furnitureCateDisableColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  final buildLamps = ListView.builder(
    scrollDirection: Axis.horizontal,
    physics: BouncingScrollPhysics(),
    shrinkWrap: true,
    itemCount: lampList.length,
    itemBuilder: (context, int index) => Lamp(
          item: lampList[index],
          index: index,
        ),
  );
  final buildFurnitureCategories = Container(
    height: 100.0,
    //color: Colors.red,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: furnitureCategoriesList.length,
      itemBuilder: (context, int index) => FurnitureCategory(
            item: furnitureCategoriesList[index],
          ),
    ),
  );
}
