import 'package:aula1504/musica.dart';
import 'package:flutter/material.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    //ModalRouter.of(constext) nos devolve um objeto que sinaliza de onde viemos
    //para cheagar ate aqui (qual a rota percorrida?)
    //nessa rota, o atributo settings representa as configurações realizadas na
    // rota no momento da partida
    //dentro desse atributo existe o atributo arguments de onde a gente consegue
    // receber parametros da outra tela/widget
    final musica = ModalRoute.of(context)?.settings.arguments as Musica;
    final textTheme = Theme.of(context).textTheme;

    final width = MediaQuery.of(context).size.width - 40;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(
              musica.capa,
              width: width,
              height: width,
              fit: BoxFit.fitHeight,
            ),
            Text(
              musica.nome,
              style: textTheme.headlineMedium,
            ),
            Text(
              musica.artista,
              style: textTheme.headlineSmall,
            ),
            Text(
              musica.album,
              style: textTheme.headlineSmall,
            )
          ],
        ),
      ),
    );
  }
}
