import 'package:desafio/widgets/head.widget.dart';
import 'package:flutter/material.dart';
import 'package:desafio/data/skill.data.dart';
import 'package:desafio/models/skill.model.dart';
import 'package:desafio/widgets/skills.widget.dart';

class SkillScreen extends StatefulWidget {
  const SkillScreen({super.key});

  @override
  State<SkillScreen> createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Skill> skillsData = SkillData.skills;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imgs/fondo8.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Head(
                text: 'Skills',
                sizeline: 90,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: skillsData.length,
                  itemBuilder: (context, i) {
                    final Skill item = skillsData[i];
                    return SkillBar(
                      skillName: item.skillName,
                      percentage: item.percentage,
                      percentageColor: item.percentageColor,
                      textColor: item.textColor,
                      barColor: item.barColor,
                      heightMin: item.heightMin,
                      leftPadding: item.leftPadding,
                      rightPdding: item.rightPdding,
                      topPadding: item.topPadding,
                      bottomPadding: item.bottomPadding,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
