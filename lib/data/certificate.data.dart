import 'package:desafio/models/certificate.model.dart';

class CertificateData {
  static const List<Certificate> certificatesData = [
    Certificate(
        name: 'Backend', logo: 'assets/imgs/certificatesImage/backend.png'),
    Certificate(name: 'CSS', logo: 'assets/imgs/certificatesImage/css.png'),
    Certificate(
        name: 'Procesos ETL', logo: 'assets/imgs/certificatesImage/etl.jpg'),
    Certificate(
        name: 'Full Stack',
        logo: 'assets/imgs/certificatesImage/fullStack.png'),
    Certificate(
        name: 'JavaScript', logo: 'assets/imgs/certificatesImage/js.png'),
    Certificate(
        name: 'Power BI', logo: 'assets/imgs/certificatesImage/powerbi.jpg'),
    Certificate(name: 'React', logo: 'assets/imgs/certificatesImage/react.png'),
    Certificate(
        name: 'React II', logo: 'assets/imgs/certificatesImage/react2.png'),
    Certificate(name: 'SQL', logo: 'assets/imgs/certificatesImage/sql.png'),
    Certificate(
        name: 'Unity en C#', logo: 'assets/imgs/certificatesImage/unity.jpg'),
    Certificate(
        name: 'Fundamento Web', logo: 'assets/imgs/certificatesImage/web.png'),
    Certificate(
        name: 'Web Scraping', logo: 'assets/imgs/certificatesImage/ws.jpg'),
  ];

  static List<Certificate> get certificates => certificatesData;
}
