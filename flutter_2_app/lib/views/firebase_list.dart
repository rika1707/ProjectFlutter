import 'package:flutter/material.dart';
import 'package:flutter_2_app/domain/firebase_connection.dart';
import 'package:flutter_2_app/views/detail_view.dart';

import '../Entities/carros.dart';
import '../Entities/servicios.dart';
import '../utils/transicion.dart';

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
  return Padding(
    padding: const EdgeInsets.all(1.0),
    child: Card(
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: SizedBox(
        width: 200,
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: FadeInImage(
                height: 90,
                placeholder: const AssetImage('assets/images/loading.gif'),
                image: NetworkImage(imagen),
              ),
            ),
            
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
              nombre + ' ' + apellido,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              telefono.toString(),
              style: const TextStyle(fontSize: 12,),
            ),
              ]
            ),
           
           TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      TransicionPage(DetailView(
                                nombre: nombre,
                                apellido: apellido,
                                telefono: telefono,
                                imagen: imagen,
                                licencia: licencia,
                                carros: carros,
                                servicios: servicios,
                              )));
                },
                child: const Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        ),
      ),
    ),
  );
}
