import 'package:flutter/material.dart';
import 'package:step_circle_progressbar/step_circle_progressbar.dart';

class SkillCircle extends StatefulWidget {
  const SkillCircle({
    Key? key,
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
  }) : super(key: key);

  final double circleSize;
  final int totalSteps;
  final int currentSteps;
  final Color progressColor;
  final Color stepColor;
  final String? text;
  final double leftPadding;
  final double rightPdding;
  final double topPadding;
  final double bottomPadding;

  @override
  State<SkillCircle> createState() => _SkillCircleState();
}

class _SkillCircleState extends State<SkillCircle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(widget.leftPadding, widget.topPadding,
            widget.rightPdding, widget.bottomPadding),
        child: Stack(
          alignment: Alignment.center,
          children: [
            StepCircleProgressBar(
              circleSize: widget.circleSize,
              totalSteps: widget.totalSteps,
              currentSteps: widget.currentSteps,
              progressColor: widget.progressColor,
              stepColor: widget.stepColor,
            ),
            if (widget.text != null)
              Column(
                children: [
                  Text(
                    widget.text!,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 16,
                      fontFamily: 'YsabeauOffice',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${widget.currentSteps}%',
                    style: const TextStyle(
                      color: Color.fromARGB(255, 150, 146, 146),
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
          ],
        ));
  }
}
