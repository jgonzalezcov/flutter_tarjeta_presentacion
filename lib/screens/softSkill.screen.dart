import 'package:desafio/data/softSkills.data.dart';
import 'package:desafio/models/softSkill.model.dart';
import 'package:desafio/widgets/head.widget.dart';
import 'package:desafio/widgets/softSkills.widget.dart';
import 'package:flutter/material.dart';

class SoftSkillScreen extends StatefulWidget {
  const SoftSkillScreen({super.key});

  @override
  State<SoftSkillScreen> createState() => _SoftSkillScreenState();
}

class _SoftSkillScreenState extends State<SoftSkillScreen> {
  @override
  Widget build(BuildContext context) {
    const List<SoftSkill> skillsData = SoftSkillData.softSkillsData;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imgs/fondo15.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Head(
                text: 'Soft Skills',
                sizeline: 150,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: skillsData.map((item) {
                      return SkillCircle(
                        circleSize: item.circleSize,
                        totalSteps: item.totalSteps,
                        currentSteps: item.currentSteps,
                        progressColor: item.progressColor,
                        stepColor: item.stepColor,
                        text: item.text,
                        leftPadding: item.leftPadding,
                        rightPdding: item.rightPdding,
                        topPadding: item.topPadding,
                        bottomPadding: item.bottomPadding,
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
