import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class FirebaseList extends StatelessWidget {
  const FirebaseList({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: TextButton(
            child: Text('Add'),
            onPressed: callDatabase,
              ), 
            ),
        )
    );
  }
}

void callDatabase() {
  DatabaseReference refDatabase = FirebaseDatabase.instance.ref('/Registros');
  refDatabase.onValue.listen((event) {
    final data = event.snapshot.value;
    print(data.toString());
  });
}
