import 'package:flutter/material.dart';
import 'package:flutter_2_app/domain/firebase_connection.dart';
import 'package:flutter_2_app/views/detail_view.dart';

import '../Entities/carros.dart';
import '../Entities/servicios.dart';

class FirebaseList extends StatefulWidget {
  const FirebaseList({Key? key}) : super(key: key);

  @override
  State<FirebaseList> createState() => _FirebaseListState();
}

class _FirebaseListState extends State<FirebaseList> {
  List<dynamic> listWash = [];
  FirebaseConnection con = FirebaseConnection();

  @override
  Widget build(BuildContext context) {
    con
        .getAllRegistros()
        .then((value) =>
            value.registros?.forEach((element) => listWash.add(element)))
        .catchError((error) => print(error));
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFEEF4FA),
              Color(0xFF949597),
            ],
          ),
        ),
        child: Center(
          child: ListView.builder(
              itemCount: listWash.length,
              itemBuilder: (_, index) {
                return _crearCardsListWash(context,
                    listWash[index].nombre,
                    listWash[index].apellido,
                    listWash[index].telefono,
                    listWash[index].imagen,
                    listWash[index].licencia,
                    listWash[index].carros,
                    listWash[index].servicios);
              }),
        ),
      ),
    );
  }
}

Widget _crearCardsListWash(context,
    String nombre, String apellido, int telefono, String imagen, String licencia, Carros carros, Servicios servicios) {
  return Center(
    child: Card(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: SizedBox(
        width: 300,
        height: 320,
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: FadeInImage(
                height: 200,
                placeholder: const AssetImage('assets/images/loading.gif'),
                image: NetworkImage(imagen),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              nombre + ' ' + apellido,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              telefono.toString(),
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailView(
                                nombre: nombre,
                                apellido: apellido,
                                telefono: telefono,
                                imagen: imagen,
                                licencia: licencia,
                                carros: carros,
                                servicios: servicios,
                              )));
                },
                child: const Text('Ver Detalle'))
          ],
        ),
      ),
    ),
  );
}
