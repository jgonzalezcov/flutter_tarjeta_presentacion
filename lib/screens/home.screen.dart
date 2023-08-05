import 'package:desafio/widgets/buttonLink.widget.dart';
import 'package:desafio/widgets/circleAvatar.widget.dart';
import 'package:desafio/widgets/line.widget.dart';
import 'package:desafio/widgets/textInfo.widget.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/imgs/fondo5.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: ListView(
            children: [
              const MyCircleAvatar(
                size: 80,
                img: 'assets/imgs/yo.jpg',
                borderImage: 'assets/imgs/aura2.gif',
                borderWidth: 4,
              ),
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
              const ButtonLink(
                text: '+56956274136',
                ico: Icons.phone,
                colorIco: Color.fromARGB(255, 9, 131, 206),
                color: Color.fromARGB(255, 42, 59, 241),
                fontZise: 20,
                family: 'YsabeauOffice',
                type: FontWeight.normal,
                bgColor: Colors.white,
              ),
              const ButtonLink(
                text: 'jgonzalezcov@gmail.com',
                ico: Icons.email,
                colorIco: Color.fromARGB(255, 9, 131, 206),
                color: Color.fromARGB(255, 42, 59, 241),
                fontZise: 20,
                family: 'YsabeauOffice',
                type: FontWeight.normal,
                bgColor: Colors.white,
              ),
              const SizedBox(height: 20),
              Center(
                  child: Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: QrImageView(
                  data: 'https://github.com/jgonzalezcov',
                  version: QrVersions.auto,
                  size: 150.0,
                ),
              )),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: FractionallySizedBox(
                  widthFactor: 0.90,
                  child: Container(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/imgs/fondo5.jpg'),
                        fit: BoxFit.cover,
                      ),
                      border: Border.all(
                        color: Colors.transparent,
                        width: 5, // Ancho del borde
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        color: Colors.black.withOpacity(0.2),
                        padding: const EdgeInsets.all(5),
                        child: const TextInfo(
                          text:
                              'Desarrollador Fullstack JavaScript y Flutter, comenzando en este mundo fantástico de la programación. Soy una persona que siempre le gusta aprender cosas nuevas y los desafíos a mis capacidades, colocando siempre todo de mí, para destacar en lo que tenga que llevar a cabo. Años de experiencia en bases de datos y con el deseo de comenzar a desarrollarme como profesional en el Desarrollo de aplicaciones',
                          size: 22,
                          family: 'YsabeauOffice',
                          type: FontWeight.bold,
                          color: Colors.white,
                          bgColor: Colors.transparent,
                          leftPadding: 20,
                          rightPdding: 20,
                          topPadding: 20,
                          bottomPadding: 20,
                          aling: TextAlign.justify,
                        ),
                      ),
                    ),
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
