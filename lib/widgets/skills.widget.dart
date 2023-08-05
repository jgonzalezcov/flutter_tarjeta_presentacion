import 'package:flutter/material.dart';

class SkillBar extends StatefulWidget {
  const SkillBar({
    Key? key,
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
  }) : super(key: key);
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

  @override
  State<SkillBar> createState() => _SkillBarState();
}

class _SkillBarState extends State<SkillBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(widget.leftPadding, widget.topPadding,
            widget.rightPdding, widget.bottomPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.skillName,
              style: TextStyle(
                  fontFamily: 'YsabeauOffice',
                  fontWeight: FontWeight.bold,
                  color: widget.textColor,
                  fontSize: 18),
            ),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              minHeight: widget.heightMin,
              value: widget.percentage / 100,
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(widget.barColor),
            ),
            const SizedBox(height: 4),
            Text(
              '${widget.percentage}%',
              style: TextStyle(
                  color: widget.percentageColor, fontFamily: 'Roboto'),
            ),
          ],
        ));
  }
}
