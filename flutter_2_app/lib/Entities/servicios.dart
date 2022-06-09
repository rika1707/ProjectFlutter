class Servicios {
  final String? lavado;
  final String? tapiceria;
  final String? polish;

  Servicios({
    this.lavado,
    this.tapiceria,
    this.polish,
  });
  factory Servicios.fromJson(Map<String, dynamic> json) {
    return Servicios(
      lavado: json['lavado'],
      tapiceria: json['tapiceria'],
      polish: json['polish'],
    );
  }
}
