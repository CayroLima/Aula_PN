import 'package:aula1504/pages/home_page.dart';
import 'package:aula1504/pages/play_list_page.dart';
import 'package:aula1504/pages/play_page.dart';
import 'package:aula1504/util/tema.dart';
import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (_) => const HomePage(),
        "/play-list": (_) => const PlayListPage(),
        "/play": (_) => const PlayPage(),
      },
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      theme: temaPadrao(),
    );
  }
}
