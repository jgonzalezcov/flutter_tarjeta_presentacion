import 'package:flutter/material.dart';

class TextInfo extends StatefulWidget {
  const TextInfo({
    Key? key,
    required this.text,
    required this.size,
    required this.family,
    required this.type,
    required this.color,
    required this.bgColor,
    required this.leftPadding,
    required this.rightPdding,
    required this.topPadding,
    required this.bottomPadding,
    required this.aling,
  }) : super(key: key);
  final String text;
  final double size;
  final String family;
  final FontWeight type;
  final Color color;
  final Color bgColor;
  final double leftPadding;
  final double rightPdding;
  final double topPadding;
  final double bottomPadding;
  final TextAlign aling;

  @override
  State<TextInfo> createState() => _TextInfoState();
}

class _TextInfoState extends State<TextInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(widget.leftPadding, widget.topPadding,
          widget.rightPdding, widget.bottomPadding),
      child: Container(
        color: widget.bgColor,
        child: Text(
          widget.text,
          textAlign: widget.aling,
          style: TextStyle(
            fontFamily: widget.family,
            color: widget.color,
            fontSize: widget.size,
            fontWeight: widget.type,
          ),
        ),
      ),
    );
  }
}
