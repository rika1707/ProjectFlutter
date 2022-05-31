import 'package:flutter/material.dart';
import 'package:flutter_2_app/views/listview_1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ListView1(),
    );
  }
}