import 'package:flutter/material.dart';

class RecuperarPage extends StatelessWidget {
  const RecuperarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recuperar Senha"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const TextField(
                decoration: InputDecoration(
                  labelText: "E-mail",
                ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Recuperar"),
                  ),
                )
            ],
          ),
          ),
        ),
    );
  }
}
