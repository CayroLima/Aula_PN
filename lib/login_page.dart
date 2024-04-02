import 'package:flutter/material.dart';

void main() => runApp(const Loginpage());

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioController = TextEditingController(text: "");
    final passwordController = TextEditingController(text: "");
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final linkStyle =
        textTheme.bodyMedium?.copyWith(decoration: TextDecoration.underline);
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  TextField(
                    controller: usuarioController,
                    decoration: const InputDecoration(
                      labelText: "Usuário",
                    ),
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(labelText: "Senha"),
                    obscureText: true,
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(top: 10, bottom: 5),
                    child: ElevatedButton(
                        onPressed: () {
                          final usuario = usuarioController.text;
                          final senha = passwordController.text;
                          var message = "Credenciais inválidas";
                          if (usuario == "admin" && senha == "102030") {
                            message = "Seja bem vindo, Adminstrador";
                            //navega para tela que quero
                            Navigator.pushNamed(context, "/home");
                            return;
                          }
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(message)),
                          );
                        },
                        child: const Text("Entrar")),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Precisa de Ajuda ?",
                        style: linkStyle,
                      ),
                      Text("Cadastre-se", style: linkStyle),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
