import 'package:aula1504/app.dart';
import 'package:aula1504/vm/aparencia.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProvedorEstado extends StatelessWidget {
  const ProvedorEstado({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider
    (providers: [
      criaAparencia(),
    ],
    child: const Aplicacao(),
    );
  }
}