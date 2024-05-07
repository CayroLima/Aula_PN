import 'package:aula1504/componentes/item_musica.dart';
import 'package:aula1504/repositorio/repositorio_musica.dart';
import 'package:flutter/material.dart';

class PlayListPage extends StatelessWidget {
  const PlayListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final repositorio = RepositorioMusica();
    final musicas = repositorio.select();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Musicas biurifou 🎶🎵🎙️🎼"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: musicas.length,
        itemBuilder: (context, index) => ItemMusica(
          musica: musicas[index],
        ),
        separatorBuilder: (context, index) =>
            Divider(color: index % 2 == 0 ? Colors.black : Colors.grey),
      ),
    );
  }
}