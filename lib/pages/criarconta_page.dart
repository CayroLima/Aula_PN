import 'package:flutter/material.dart';

class CriarcontaPage extends StatelessWidget {
  const CriarcontaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Criar conta"),
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
                  labelText: "Nome de Usuario",
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: "E-mail",
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Senha",
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: "Senha Novamente",
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Criar Conta"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
