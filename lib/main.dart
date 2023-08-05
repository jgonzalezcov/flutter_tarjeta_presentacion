import 'package:desafio/screens/certificate.screen.dart';
import 'package:desafio/screens/home.screen.dart';
import 'package:desafio/screens/skill.screen.dart';
import 'package:desafio/screens/softSkill.screen.dart';
import 'package:desafio/screens/video.screen.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Developer'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //variables
  final pages = [
    const HomeScreen(),
    const SkillScreen(),
    const SoftSkillScreen(),
    const CertificateScreen(),
    const VideoScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) => LiquidSwipe(pages: pages)),
    );
  }
}
