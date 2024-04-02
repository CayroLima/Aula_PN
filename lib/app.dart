import 'package:aula_0204/home_page.dart';
import 'package:aula_0204/login_page.dart';
import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //en que rota meu aplicativo deve começar
      initialRoute: "/login",
      //Mapa de rotas disponiveis no aplicativo
      //(todas as telas)
      routes: {
        "/login": (_) => const Loginpage(),
        "/home": (_) => const HomePage(),
      },
    );
  }
}
