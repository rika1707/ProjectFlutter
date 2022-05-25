import 'package:flutter/material.dart';
import 'package:flutter_application_basic/count_screen.dart';
import 'package:flutter_application_basic/counter.dart';

import 'colors.dart';
import 'home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const MyHomePageView(),
      //home: const MyColorsPage(title: 'Flutter Demo Home Colors'),
      //home: const Counter()
      home: const CounterFull(),
    );
  }
}

