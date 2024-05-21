import 'package:aula1504/app.dart';
import 'package:aula1504/repositorio/repositorio_musica.dart';
import 'package:aula1504/vm/aparencia.dart';
import 'package:aula1504/vm/auth.dart';
import 'package:aula1504/vm/catalogo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProvedorEstado extends StatelessWidget {
  const ProvedorEstado({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        criaAparencia(),
        criaAuth(),
        createCaralogo(RepositorioMusica().select()),
      ],
      child: const Aplicacao(),
    );
  }
}
