import 'package:firebase_database/firebase_database.dart';
import 'dart:convert';

import 'package:flutter_2_app/Entities/registros.dart';
import 'package:flutter_2_app/Entities/response_firebase.dart';

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

  /* void getAllRegistros() {
    DatabaseReference _registros = instanceFirebase();
    _registros.onValue.listen((event) {
      final registros = event.snapshot.value;
      Map<String, dynamic> registrosJson = json.decode(registros.toString());
      print(registrosJson);
      ResponseFirebase reg = ResponseFirebase.fromJson(registrosJson);
      print(reg);
    });
  } */

  Future<ResponseFirebase> getAllRegistros() async {
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.get();
      final registrosJson = json.encode(response.value);
      final registrosString = json.decode(registrosJson);
      final registers = ResponseFirebase.fromJson(registrosString.values.toList());
      return registers;
    } catch (e) {
      rethrow;
    }
  }
}
