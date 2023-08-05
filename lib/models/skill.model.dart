import 'package:flutter/material.dart';

class Skill {
  // Constructores
  // Básico
  const Skill({
    required this.skillName,
    required this.percentage,
    required this.percentageColor,
    required this.textColor,
    required this.barColor,
    required this.heightMin,
    required this.leftPadding,
    required this.rightPdding,
    required this.topPadding,
    required this.bottomPadding,
  });
  // Factorys - Sirven para definir un modelo por defecto.
  factory Skill.completed({
    required String title,
    DateTime? deadline,
  }) {
    return const Skill(
      skillName: 'Flutter',
      percentage: 20.0,
      textColor: Colors.white,
      barColor: Colors.yellow,
      percentageColor: Colors.white,
      heightMin: 8,
      leftPadding: 8,
      rightPdding: 8,
      topPadding: 30,
      bottomPadding: 0,
    );
  }

  factory Skill.fromJson(Map<String, dynamic> json) {
    return Skill(
      skillName: json['skillName'],
      percentage: json['percentage'],
      textColor: json['textColor'],
      barColor: json['barColor'],
      percentageColor: json['percentageColor'],
      heightMin: json['heightMin'],
      leftPadding: json['leftPadding'],
      rightPdding: json['rightPdding'],
      topPadding: json['topPadding'],
      bottomPadding: json['bottomPadding'],
    );
  }

  final String skillName;
  final double percentage;
  final Color percentageColor;
  final Color textColor;
  final Color barColor;
  final double heightMin;
  final double leftPadding;
  final double rightPdding;
  final double topPadding;
  final double bottomPadding;
  // Definición propiedades
  // mutable/inmutables tipado nombreDeLaPropiedad;

  // Propiedades

  // Métodos
  // set createdAt(DateTime? createdAt) {
  //   _createdAt = createdAt;
  // }

  // DateTime? get createdAt => _createdAt;
}
