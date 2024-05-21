import 'package:aula1504/vm/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final usuarioController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 60),
                child: Text(
                  "MuPlayer",
                  style: textTheme.headlineLarge,
                ),
              ),
              TextField(
                controller: usuarioController,
                decoration: const InputDecoration(
                  labelText: "Usuário",
                ),
              ),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: "Senha",
                ),
                obscureText: true,
                autocorrect: false,
              ),
              Container(
                width: double.maxFinite,
                margin: const EdgeInsets.only(
                  top: 10,
                  bottom: 20,
                ),
                child: ElevatedButton(
                  onPressed: () => login(
                    context,
                    usuarioController.text,
                    passwordController.text,
                  ),
                  child: const Text("Entrar"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, "/recuperar"),
                    child: Text(
                      "Esqueci a senha",
                      style: textTheme.bodyMedium?.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, "/criarconta"),
                    child: Text(
                      "Cadastrar",
                      style: textTheme.bodyMedium?.copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login(BuildContext context, String usuario, String senha) {
    final login = Provider.of<Auth>(context, listen: false);

    try {
      login.login(usuario, senha);
      if (login.isLogado) {
        Navigator.pushReplacementNamed(context, "/");
      }
    } on Exception catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }
}
