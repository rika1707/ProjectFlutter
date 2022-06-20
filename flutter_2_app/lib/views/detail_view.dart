import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_2_app/Entities/registros.dart';

import '../Entities/carros.dart';
import '../Entities/servicios.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key, required this.nombre, required this.apellido, required this.licencia, required this.telefono, required this.imagen, required this.carros, required this.servicios}) : super(key: key);
  final String nombre;
  final String apellido;
  final int telefono;
  final String licencia;
  final String imagen;
  final Carros carros;
  final Servicios servicios;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Detalle de la Persona'),
        ),
        body: Container(
      child: SingleChildScrollView(
        child: SizedBox(
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 5,
            child: Column(
              children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                 child: FadeInImage(
                  height: 300,
                  placeholder: const AssetImage('assets/images/loading.gif'),
                  image: NetworkImage(imagen),
                 ),
               ),
               const SizedBox(
                 height: 10,
               ),
                Text(
                  'Nombre: $nombre',
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  'Apellido: $apellido',
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  'Telefono: $telefono',
                  style: const TextStyle(fontSize: 20),
                ),
                Text(
                  'Licencia: $licencia',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: <Widget>[
                    const Text(
                      'Carros:',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Placa: ${carros.placa}',
                          style: const TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Modelo: ${carros.modelo}',
                          style: const TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Color: ${carros.color}',
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Servicios:',
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text(
                          'Lavado: ${servicios.lavado}',
                          style: const TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Tapiceria: ${servicios.tapiceria}',
                          style: const TextStyle(fontSize: 20),
                        ),
                         const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Polish: ${servicios.polish}',
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Regresar'),
                 ),
              ],
            ),
          ),
        ),
      ),
    ),
      ),
    );
  }
}
