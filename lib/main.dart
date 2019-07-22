import 'package:flutter/material.dart';
import 'Pages/item_guide.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TFT Items',
      theme: ThemeData(),
      home: ItemGuideActivity(),
    );
  }
}
