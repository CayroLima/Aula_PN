import 'package:aula1504/entidade/musica.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class Catalogo extends ChangeNotifier {
  final List<Musica> musicas;
  Musica? _selecionada;

  Catalogo({
    required this.musicas,
  });

  Musica? findById(String id) {
    return musicas.where((m) => m.id == id).first;
  }

  void select(String id) {
    _selecionada = findById(id);
    notifyListeners();
  }

  Musica? get selecionada => _selecionada;
}

ChangeNotifierProvider<Catalogo> createCaralogo(List<Musica> musicas) =>
    ChangeNotifierProvider(
      create: (_) => Catalogo(musicas: musicas),
    );
