import 'package:dribble_one/src/pages/furniture.dart';
import 'package:dribble_one/src/pages/profile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => SafeArea(
              child: SafeArea(
                child: Profile(),
              ),
            ),
        '/furniture': (BuildContext context) => SafeArea(
              child: SafeArea(
                child: Furniture(),
              ),
            ),
      },
    );
  }
}
