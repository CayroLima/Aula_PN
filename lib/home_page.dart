import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final linguagens = <String>[
    "C#",
    "Dart",
    "Golang",
    "Java",
    "Javascript",
  ];

  String linguagem = "C#";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Escolha:"),
            DropdownButton(
              value: linguagem,
              items: linguagens
                  .map(
                    (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                  .toList(),
              onChanged: (value) => setState(() {
                linguagem = value!;
              }),
            ),
            Text("Voce selecionou: $linguagem")
          ],
        ),
      ),
    );
  }
}
