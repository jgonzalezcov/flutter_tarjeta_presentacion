import 'package:desafio/models/certificate.model.dart';

class CertificateData {
  static const List<Certificate> certificatesData = [
    Certificate(name: 'Flutter', logo: 'assets/imgs/yo.jpg'),
    Certificate(name: 'JavaScript', logo: 'assets/imgs/yo.jpg'),
  ];

  static List<Certificate> get certificates => certificatesData;
}
