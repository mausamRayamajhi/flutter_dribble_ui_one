import 'package:dribble_one/src/utils/constant.dart';
import 'package:flutter/material.dart';

class CustomSideButton extends StatelessWidget {
  final IconData icon;
  CustomSideButton({this.icon});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: profile_info_background,
          borderRadius: BorderRadius.circular(10.0)),
      child: Icon(
        icon,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }
}
