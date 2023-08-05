class Certificate {
  // Constructores
  // Básico
  const Certificate({required this.name, required this.logo});
  // Factorys - Sirven para definir un modelo por defecto.
  factory Certificate.completed({
    required String title,
    DateTime? deadline,
  }) {
    return const Certificate(
      name: 'Flutter',
      logo: 'assets/imgs/yo.jpg',
    );
  }

  factory Certificate.fromJson(Map<String, dynamic> json) {
    return Certificate(
      name: json['name'],
      logo: json['logo'],
    );
  }

  final String name;
  final String logo;

  // Definición propiedades
  // mutable/inmutables tipado nombreDeLaPropiedad;

  // Propiedades

  // Métodos
  // set createdAt(DateTime? createdAt) {
  //   _createdAt = createdAt;
  // }

  // DateTime? get createdAt => _createdAt;
}
