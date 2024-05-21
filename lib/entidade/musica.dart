import 'package:uuid/uuid.dart';

class Musica {
  final String id;
  final String numero;
  final String nome;
  final String artista;
  final String duracao;
  final String capa;
  final String album;

  Musica({
    required this.id,
    required this.numero,
    required this.nome,
    required this.artista,
    required this.duracao,
    required this.capa,
    required this.album,
  });
}
