import 'package:flutter/material.dart';

class QrInfo extends StatefulWidget {
  const QrInfo({
    Key? key,
    required this.width,
    required this.height,
    required this.img,
    required this.leftPadding,
    required this.rightPdding,
    required this.topPadding,
    required this.bottomPadding,
  }) : super(key: key);
  final double width;
  final double height;
  final String img;
  final double leftPadding;
  final double rightPdding;
  final double topPadding;
  final double bottomPadding;

  @override
  State<QrInfo> createState() => _QrInfoState();
}

class _QrInfoState extends State<QrInfo> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.fromLTRB(widget.leftPadding, widget.topPadding,
            widget.rightPdding, widget.bottomPadding),
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: ClipRRect(
            child: Image.asset(
              widget.img,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
