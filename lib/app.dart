import 'package:aula1504/home_page.dart';
import 'package:aula1504/play_page.dart';
import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (_) => const HomePage(),
        "/play": (_) => const PlayPage(),
      },
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
    );
  }
}
