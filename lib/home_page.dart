import 'package:aula1504/musica.dart';
import 'package:aula1504/repositorio_musica.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final repositorio = RepositorioMusica();
    final musicas = repositorio.select();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: musicas.length,
        itemBuilder: (context, index) => _ItemMusica(
          musica: musicas[index],
        ),
        separatorBuilder: (context, index) =>
            Divider(color: index % 2 == 0 ? Colors.black : Colors.grey),
      ),
    );
  }
}

class _ItemMusica extends StatelessWidget {
  //final String, por nao poder receber mais de uma atribuição
  //e por nao poder aceitar nulo, nos obriga a atribuir valor
  //via construtor
  final Musica musica;

  const _ItemMusica({
    super.key,
    required this.musica,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Você clicou em: ${musica.nome}")),
      ),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Container(
                margin: const EdgeInsets.only(right: 10),
                child: Text(musica.numero)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(musica.nome, style: textTheme.bodyLarge),
                  Text(musica.artista, style: textTheme.bodyLarge)
                ],
              ),
            ),
            Text(musica.duracao),
          ],
        ),
      ),
    );
  }
}
