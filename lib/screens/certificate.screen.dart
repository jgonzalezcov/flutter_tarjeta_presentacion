import 'package:desafio/data/certificate.data.dart';
import 'package:desafio/models/certificate.model.dart';
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
  final List<Certificate> certificateData = CertificateData.certificates;

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
                                text:
                                    'Certificado ${certificateData[index].name}',
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
                              certificateData[index].logo,
                              fit: BoxFit.scaleDown,
                            ),
                          ],
                        );
                      },
                      autoplay: true,
                      itemCount: certificateData.length,
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
