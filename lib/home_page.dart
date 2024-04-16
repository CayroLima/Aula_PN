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
        children: const [
          _ItemMusica(
            numero: "01",
            nome: "Amo noite e dia",
            artista: "Jorge e Mateus",
            duracao: "04:32",
          ),
          _ItemMusica(
            numero: "02",
            nome: "Supermen",
            artista: "Eminem",
            duracao: "04:32",
          ),
          _ItemMusica(
            numero: "03",
            nome: "In the end",
            artista: "Link Park",
            duracao: "04:32",
          ),
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
            margin: const EdgeInsets.only(right: 10), child: Text(numero)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(nome), Text(artista)],
          ),
        ),
        Text(duracao),
      ],
    );
  }
}
