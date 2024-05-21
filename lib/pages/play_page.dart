import 'package:aula1504/entidade/musica.dart';
import 'package:aula1504/vm/catalogo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:provider/provider.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final argumento = ModalRoute.of(context)?.settings.arguments;
    final catalogo = Provider.of<Catalogo>(context);
    final musica = catalogo.selecionada;
    final veioMusica = musica != null;

    return Scaffold(
      body:
          veioMusica ? body(context, musica) : bodyEmpty(context),
    );
  }

  double getImageWidth(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    if (kIsWeb) {
      return screenSize.width / 2;
    }
    return screenSize.width - 40;
  }

  double getImageHeight(BuildContext context) {
    final width = getImageWidth(context);
    return width * 1080 / 1920;
  }

  Widget bodyEmpty(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: Column(
        children: [
          Text(
            "Nenhuma música foi informada. Volte e selecione outra",
            style: textTheme.titleMedium,
          ),
        ],
      ),
    );
  }

  Widget body(BuildContext context, Musica musica) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            Image.network(
              musica.capa,
              width: getImageWidth(context),
              height: getImageHeight(context),
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
