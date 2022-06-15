import 'package:flutter/material.dart';
import 'package:flutter_2_app/domain/firebase_connection.dart';
import 'package:flutter_2_app/views/detail_view.dart';

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
    con.getAllRegistros().then((value) =>
        value.registros?.forEach((element) => listWash.add(element)));
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Lista de Contactos',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: ListView.builder(
            itemCount: listWash.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(listWash[index].nombre),
                subtitle: Text(listWash[index].apellido),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(listWash[index].imagen),
                ),
                trailing: Text(listWash[index].telefono.toString()),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailView(
                        nombre: listWash[index].nombre,
                        apellido: listWash[index].apellido,
                        telefono: listWash[index].telefono,
                        licencia: listWash[index].licencia,
                        imagen: listWash[index].imagen,
                        carros: listWash[index].carros,
                        servicios: listWash[index].servicios,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
