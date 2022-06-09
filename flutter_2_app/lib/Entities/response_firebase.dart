import 'package:flutter_2_app/Entities/registros.dart';

class ResponseFirebase {
  List<Registros>? registros;

  ResponseFirebase({this.registros});

  ResponseFirebase.fromJson(Map<String, dynamic> json) {
    if (json['Registros'] != null) {
      registros = <Registros>[];
      json['Registros'].forEach((v) {
        registros!.add(Registros.fromJson(v));
      });
    }
  }
}
