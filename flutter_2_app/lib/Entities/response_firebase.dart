import 'package:flutter_2_app/Entities/registros.dart';

class ResponseFirebase {
  List<Registros>? registros;

  ResponseFirebase({this.registros});

 factory ResponseFirebase.fromJson(List<dynamic> json) => ResponseFirebase(
    registros: json.map((e) => Registros.fromJson(e)).toList(),
 );
}
