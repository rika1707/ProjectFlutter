class Carros {
  final String? color;
  final String? marca;
  final int? modelo;
  final String? placa;

  Carros({
    this.color,
    this.marca,
    this.modelo,
    this.placa,
  });
  
  factory Carros.fromJson(Map<String, dynamic> json) {
    return Carros(
      color: json['color'],
      marca: json['marca'],
      modelo: json['modelo'],
      placa: json['placa'],
    );
  }
}
