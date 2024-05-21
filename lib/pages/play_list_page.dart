import 'package:aula1504/componentes/BarraTitulo.dart';
import 'package:aula1504/componentes/item_musica.dart';
import 'package:aula1504/vm/catalogo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlayListPage extends StatelessWidget {
  const PlayListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final catalogo = Provider.of<Catalogo>(context);
    final musicas = catalogo.musicas;

    return Scaffold(
      appBar: const BarraTitulo(
        title: "Musiquinhas do Balacobaco",
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(4),
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
