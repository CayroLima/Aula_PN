import 'package:aula1504/musica.dart';

class RepositorioMusica {

  //corresponde a chamada de select do banco ou
  //consumo de uma api que retorna uma lista de musicas oi
  // leitura de um aquivo contendo musicas
  //etc
  //ou seja, carrega musicas no sistema a partir uma fonte
  // externa qualquer
  List<Musica> select() {
    return <Musica>[
      Musica(
            numero: "01",
            nome: "Amo noite e dia",
            artista: "Jorge e Mateus",
            duracao: "04:32",
          ),
          Musica(
            numero: "02",
            nome: "Supermen",
            artista: "Eminem",
            duracao: "04:56",
          ),
          Musica(
            numero: "03",
            nome: "In the end",
            artista: "Link Park",
            duracao: "03:22",
          ),
          Musica(
            numero: "04",
            nome: "Numb",
            artista: "Link Park",
            duracao: "03:32",
          ),
          Musica(
            numero: "05",
            nome: "Boulevard Of Broken Dreams",
            artista: "Green Day",
            duracao: "04:12",
          ),
    ];
  }
}
