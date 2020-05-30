import 'package:flutter/material.dart';
import 'package:flutter_first_app_balcoder/ux/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "La vuelta",
        home: MyHomePage(
          item: 'La Propia APP',
        ));
  }
}

