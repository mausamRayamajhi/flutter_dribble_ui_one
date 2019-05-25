import 'package:dribble_one/src/widgets/profile_categories.dart';
import 'package:dribble_one/src/widgets/profile_detail.dart';
import 'package:dribble_one/src/widgets/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Profile extends StatelessWidget {
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
            Text(
              'Center',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ProfileDetail(),
            SizedBox(
              height: 30.0,
            ),
            ProfileCategories(),
            SizedBox(
              height: 30.0,
            ),
            Flexible(child: ProfileMenu()),
          ],
        ),
      ),
    );
  }
}
