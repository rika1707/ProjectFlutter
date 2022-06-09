import 'package:firebase_database/firebase_database.dart';
import 'dart:convert';

import 'package:flutter_2_app/Entities/registros.dart';

class FirebaseConnection {
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }

  String? getUsuarioId(id) {
    DatabaseReference _usuario = instanceFirebase();
    Object? usuario;
    _usuario.onValue.listen((event) {
      usuario = event.snapshot.value;
    });
    return usuario.toString();
  }

  void getAllRegistros() {
    DatabaseReference _registros = instanceFirebase();
    _registros.onValue.listen((event) {
      final registros = event.snapshot.value;
      Map<String, dynamic> registrosJson = json.decode(registros.toString());
      print(registrosJson);
      Registros reg = Registros.fromJson(registrosJson);
      print(reg);
    });
  }
}
