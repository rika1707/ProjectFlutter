import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_2_app/Entities/registros.dart';
import 'package:flutter_2_app/domain/firebase_connection.dart';
import 'dart:convert';

class FirebaseList extends StatelessWidget {
  const FirebaseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseConnection connection = FirebaseConnection();
    connection.getAllRegistros();
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text('hola'),
        ),
      ),
    );
  }
}
