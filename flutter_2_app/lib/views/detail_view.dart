import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_2_app/Entities/registros.dart';
import 'package:getwidget/getwidget.dart';

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
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detalle de la Persona'),
        ),
        body: Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(3.0),
              child: Image.network(
                imagen,
                fit: BoxFit.cover,
              ),
              height: 300,
              width: double.infinity,
            ),
            GFAccordion(
              title: 'Datos Personales',
              contentChild: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text('Nombre: $nombre'),
                    Text('Apellido: $apellido'),
                    Text('Telefono: $telefono'),
                    Text('Licencia: $licencia'),
                  ],
                )
                ),
              collapsedIcon: const Icon(Icons.add),
              expandedIcon: const Icon(Icons.minimize),
            ),
            GFAccordion(
              title: 'Datos del Carro',
              contentChild: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text('Color: ${carros.color}'),
                    Text('Marca: ${carros.marca}'),
                    Text('Modelo: ${carros.modelo}'),
                    Text('Placa: ${carros.placa}'),
                  ],
                )
                ),
              collapsedIcon: const Icon(Icons.add),
              expandedIcon: const Icon(Icons.minimize),
            ),
             GFAccordion(
              title: 'Datos del Servicio',
              contentChild: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text('Lavado: ${servicios.lavado}'),
                    Text('Tapiceria: ${servicios.tapiceria}'),
                    Text('Polish: ${servicios.polish}'),
                  ],
                )
                ),
              collapsedIcon: const Icon(Icons.add),
              expandedIcon: const Icon(Icons.minimize),
            ),
              
          ],
      ),
    ),
      ),
    );
  }
}
