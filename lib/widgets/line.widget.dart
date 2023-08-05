import 'package:flutter/material.dart';

class Line extends StatefulWidget {
  const Line({
    Key? key,
    required this.width,
    required this.height,
    required this.color,
  }) : super(key: key);
  final double width;
  final double height;
  final Color color;

  @override
  State<Line> createState() => _LineState();
}

class _LineState extends State<Line> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: widget.height,
        width: widget.width,
        color: widget.color,
        alignment: Alignment.center,
      ),
    );
  }
}
