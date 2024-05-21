import 'package:aula1504/pages/auth_page.dart';
import 'package:aula1504/pages/criarconta_page.dart';
import 'package:aula1504/pages/home_page.dart';
import 'package:aula1504/pages/play_list_page.dart';
import 'package:aula1504/pages/play_page.dart';
import 'package:aula1504/pages/recuperar.page.dart';
import 'package:aula1504/util/tema.dart';
import 'package:aula1504/vm/aparencia.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    //Provider.of<Aparencia> faz com que o provider (nesse
    //caso, nosso gerenciador de estado compartilhado)
    //consulte se existe algum provedor para a classe
    //Aparencia e nos devolva uma instância dela
    final aparencia = Provider.of<Aparencia>(context);

    return MaterialApp(
      title: "MuPlayer",
      routes: {
        "/": (_) => const HomePage(),
        "/play-list": (_) => const PlayListPage(),
        "/play": (_) => const PlayPage(),
        "/auth": (_) => const AuthPage(),
        "/recuperar": (_) => const RecuperarPage(),
        "/criarconta": (_) => const CriarcontaPage(),
      },
      initialRoute: "/auth",
      debugShowCheckedModeBanner: false,
      theme: temaPadrao(aparencia.isDark),
    );
  }
}
