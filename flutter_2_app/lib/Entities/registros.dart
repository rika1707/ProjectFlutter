import 'package:flutter_2_app/Entities/carros.dart';
import 'package:flutter_2_app/Entities/servicios.dart';

class Registros{
  final String? nombre;
  final String? apellido;
  final int? telefono;
  final String? licencia;
  final Carros? carros;
  final Servicios? servicios;

  Registros({
    this.nombre,
    this.apellido,
    this.telefono,
    this.licencia,
    this.carros,
    this.servicios,
  });

  factory Registros.fromJson(Map<String, dynamic> json) {
    return Registros(
      nombre: json['nombre'],
      apellido: json['apellido'],
      telefono: json['telefono'],
      licencia: json['licencia'],
      carros: json['Carro'] != null ? Carros.fromJson(json['Carro']): null,
      servicios: json['Servicio'] != null ? Servicios.fromJson(json['Servicio']): null,
    );
  }
}