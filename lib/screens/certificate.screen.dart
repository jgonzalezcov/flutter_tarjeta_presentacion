import 'package:desafio/widgets/head.widget.dart';
import 'package:desafio/widgets/textInfo.widget.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class CertificateScreen extends StatefulWidget {
  const CertificateScreen({super.key});

  @override
  State<CertificateScreen> createState() => _CertificateState();
}

class _CertificateState extends State<CertificateScreen> {
  final List<String> imagePaths = [
    'assets/imgs/certificatesImage/backend.png',
    'assets/imgs/certificatesImage/css.png',
    'assets/imgs/certificatesImage/etl.jpg',
    'assets/imgs/certificatesImage/fullStack.png',
    'assets/imgs/certificatesImage/js.png',
    'assets/imgs/certificatesImage/powerbi.jpg',
    'assets/imgs/certificatesImage/react.png',
    'assets/imgs/certificatesImage/react2.png',
    'assets/imgs/certificatesImage/sql.png',
    'assets/imgs/certificatesImage/unity.jpg',
    'assets/imgs/certificatesImage/web.png',
    'assets/imgs/certificatesImage/ws.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/imgs/fondo7.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  const Padding(
                      padding: EdgeInsets.all(0.5),
                      child: Head(text: 'Certificados', sizeline: 180)),
                  Expanded(
                    child: Swiper(
                      itemBuilder: (context, index) {
                        return ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: TextInfo(
                                text: 'Certificado $index',
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
                            ),
                            Image.asset(
                              imagePaths[index],
                              fit: BoxFit.scaleDown,
                            ),
                          ],
                        );
                      },
                      autoplay: true,
                      itemCount: imagePaths.length,
                      scrollDirection: Axis.vertical,
                      pagination: const SwiperPagination(
                          alignment: Alignment.centerRight),
                      control: const SwiperControl(),
                    ),
                  ),
                ],
              ),
            )));
  }
}
