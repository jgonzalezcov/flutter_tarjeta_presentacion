import 'package:flutter/material.dart';

class ButtonLink extends StatefulWidget {
  const ButtonLink({
    Key? key,
    required this.text,
    required this.colorIco,
    required this.ico,
    required this.color,
    required this.fontZise,
    required this.family,
    required this.type,
    required this.bgColor,
  }) : super(key: key);

  final String text;
  final IconData ico;
  final Color colorIco;
  final Color color;
  final double fontZise;
  final String family;
  final FontWeight type;
  final Color bgColor;

  @override
  State<ButtonLink> createState() => _ButtonLinkState();
}

class _ButtonLinkState extends State<ButtonLink> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Center(
        child: FractionallySizedBox(
          widthFactor: 0.8, // Ajusta el ancho del botón al 80% del padre
          child: ElevatedButton(
            onPressed: () {
              // Acción al presionar el botón
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(widget.bgColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  widget.ico,
                  color: widget.colorIco,
                  size: 30.0,
                ),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      widget.text,
                      style: TextStyle(
                        fontSize: widget.fontZise,
                        fontWeight: widget.type,
                        fontFamily: widget.family,
                        color: widget.color,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
