import 'package:flutter/material.dart';
import 'package:flutter_2_app/views/firebase_list.dart';
import 'package:flutter_2_app/views/listview_1.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_2_app/views/splash.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Splash(),
    );
  }
}
