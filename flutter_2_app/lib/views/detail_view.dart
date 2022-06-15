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
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              CircleAvatar(
                
                radius: 120,
                backgroundImage: NetworkImage(imagen),
              ),
              Text(nombre + ' ' + apellido,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text(telefono.toString(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text(licencia,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
             Column(
                children: <Widget>[
                  const Text('Carro:',
                  style:  TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        carros.modelo.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                  Text(carros.placa.toString(),
                  style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(carros.color.toString(),
                  style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                    ]
                  ),
                ],
             ),
              Column(
                children: <Widget>[
                  const Text('Servicio:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        servicios.tapiceria.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      Text(
                        servicios.lavado.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      Text(
                        servicios.polish.toString(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                  ],),
            ],),
                ],
              ),
          ),
      ),
    );
  }
}
