import 'package:flutter/material.dart';

class SoftSkill {
  // Constructores
  // Básico
  const SoftSkill({
    required this.circleSize,
    required this.totalSteps,
    required this.currentSteps,
    required this.progressColor,
    required this.stepColor,
    required this.text,
    required this.leftPadding,
    required this.rightPdding,
    required this.topPadding,
    required this.bottomPadding,
  });
  // Factorys - Sirven para definir un modelo por defecto.
  factory SoftSkill.completed({
    required String title,
    DateTime? deadline,
  }) {
    return const SoftSkill(
      circleSize: 170,
      totalSteps: 100,
      currentSteps: 80,
      progressColor: Color.fromARGB(255, 90, 253, 75),
      stepColor: Color.fromARGB(255, 222, 202, 18),
      text: 'Hola',
      leftPadding: 8,
      rightPdding: 8,
      topPadding: 30,
      bottomPadding: 0,
    );
  }

  factory SoftSkill.fromJson(Map<String, dynamic> json) {
    return SoftSkill(
      circleSize: json['circleSize'],
      totalSteps: json['totalSteps'],
      currentSteps: json['currentSteps'],
      progressColor: json['progressColor'],
      stepColor: json['stepColor'],
      text: json['text'],
      leftPadding: json['leftPadding'],
      rightPdding: json['rightPdding'],
      topPadding: json['topPadding'],
      bottomPadding: json['bottomPadding'],
    );
  }

  final double circleSize;
  final int totalSteps;
  final int currentSteps;
  final Color progressColor;
  final Color stepColor;
  final String text;
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
