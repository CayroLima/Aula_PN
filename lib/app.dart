import 'package:aula1504/pages/home_page.dart';
import 'package:aula1504/pages/play_list_page.dart';
import 'package:aula1504/pages/play_page.dart';
import 'package:aula1504/util/tema.dart';
import 'package:aula1504/vm/aparencia.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    final aparencia = Provider.of<Aparencia>(context);

    return MaterialApp(
      title: "WorldDisney",
      routes: {
        "/": (_) => const HomePage(),
        "/play-list": (_) => const PlayListPage(),
        "/play": (_) => const PlayPage(),
        "/auth": (_) => 
      },
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      theme: temaPadrao(aparencia.isDark),
    );
  }
}
