import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(4),
        children: [
          _ItemMusica(),
          const Text("2 - Amo noite e dia - Jorge e Mateus"),
          const Text("Seu Astral - Jorge e Mateus"),
          const Text("Conexões de Máfia - Matuê"),
          const Text("Supermen - Eminem"),
          const Text("Suite 14 - João Bosco e Vinicius"),
          const Text("212 - Chefin"),
          const Text("A gente brigou - Mc Don Juan"),
          const Text("Venom - Eminem"),
          const Text("Rap God - Eminem"),
          const Text("Without Me - Eminem"),
          const Text("Kiss Kiss - Chris Brown"),
          const Text("Boulevard of Broken Dreams - Green Day"),
          const Text("American Idiot - Green Day"),
          const Text("In the end - Link Park"),
          const Text("Numb - Link Park"),
          const Text("One Step Closer - Link Park")
        ],
      ),
    );
  }
}

class _ItemMusica extends StatelessWidget {
  //final String, por nao poder receber mais de uma atribuição
  //e por nao poder aceitar nulo, nos obriga a atribuir valor
  //via construtor
  final String numero;
  final String nome;
  final String artista;
  final String duracao;

  const _ItemMusica({
    super.key,
    required this.numero,
    required this.nome,
    required this.artista,
    required this.duracao,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            margin: const EdgeInsets.only(right: 10), 
            child: Text(numero)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nome), 
            Text(artista)],
          ),
        ),
        Text(duracao),
      ],
    );
  }
}
