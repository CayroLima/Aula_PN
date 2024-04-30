import 'package:aula1504/pages/play_list_page.dart';
import 'package:aula1504/pages/play_page.dart';
import 'package:flutter/material.dart';

final tabs = <Widget>[
  const PlayListPage(),
  const PlayPage(),
];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int paginaAtual;

  @override
  void initState() {
    super.initState();

    paginaAtual = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: paginaAtual,
          children: tabs,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.queue_music), label: "Play List"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.play_arrow,
              ),
              label: "Play"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Configurações",
          ),
        ],
        currentIndex: paginaAtual,
        onTap: (value) => setState(() {
          paginaAtual = value;
        }),
      ),
    );
  }
}
