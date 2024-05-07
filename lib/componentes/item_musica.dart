import 'package:aula1504/entidade/musica.dart';
import 'package:flutter/material.dart';

class ItemMusica extends StatelessWidget {
  //final String, por nao poder receber mais de uma atribuição
  //e por nao poder aceitar nulo, nos obriga a atribuir valor
  //via construtor
  final Musica musica;

  const ItemMusica({
    super.key,
    required this.musica,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, "/play", arguments: musica),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Image.network(musica.capa, width: 48, height: 48),
            Container(
                margin: const EdgeInsets.only(right: 10),
                child: Text(musica.numero)),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(musica.nome, style: textTheme.bodyLarge),
                  Row(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(right: 10),
                          child:
                              Text(musica.artista, style: textTheme.bodyLarge)),
                      Text(musica.album, style: textTheme.bodyLarge),
                    ],
                  )
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
