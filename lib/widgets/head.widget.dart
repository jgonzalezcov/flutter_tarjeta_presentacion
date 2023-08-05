import 'package:desafio/widgets/line.widget.dart';
import 'package:desafio/widgets/textInfo.widget.dart';
import 'package:flutter/material.dart';

class Head extends StatefulWidget {
  const Head({Key? key, required this.text, required this.sizeline})
      : super(key: key);

  final String text;
  final double sizeline;
  @override
  State<Head> createState() => _HeadState();
}

class _HeadState extends State<Head> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextInfo(
          text: 'Juan González Covarrubias',
          size: 27,
          family: 'YsabeauOffice',
          type: FontWeight.normal,
          color: Colors.white,
          bgColor: Colors.transparent,
          leftPadding: 0,
          rightPdding: 0,
          topPadding: 0,
          bottomPadding: 0,
          aling: TextAlign.center,
        ),
        const TextInfo(
          text: 'FLUTTER DEVELOPER',
          size: 13,
          family: 'Roboto',
          type: FontWeight.normal,
          color: Colors.white,
          bgColor: Colors.transparent,
          leftPadding: 0,
          rightPdding: 0,
          topPadding: 0,
          bottomPadding: 0,
          aling: TextAlign.center,
        ),
        const Line(width: 130, height: 1.0, color: Colors.white),
        const SizedBox(height: 20),
        TextInfo(
          text: widget.text,
          size: 35,
          family: 'YsabeauOffice',
          type: FontWeight.normal,
          color: Colors.white,
          bgColor: Colors.transparent,
          leftPadding: 0,
          rightPdding: 0,
          topPadding: 0,
          bottomPadding: 0,
          aling: TextAlign.center,
        ),
        Line(width: widget.sizeline, height: 2.0, color: Colors.white),
        const SizedBox(height: 30),
      ],
    );
  }
}
