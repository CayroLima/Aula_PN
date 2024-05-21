import 'package:aula1504/entidade/usuario.dart';
import 'package:aula1504/vm/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BarraTitulo extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const BarraTitulo({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final auth = Provider.of<Auth>(context);
    final usuario = auth.isLogado ? auth.usuario.nome : "JorginhoGamePlay";

    return AppBar(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: textTheme.bodySmall,
            ),
            Text("Nome do usuario $usuario", style: textTheme.bodySmall),
          ],
        ),
        backgroundColor: colorScheme.inversePrimary,
        actions: [
          IconButton(
              onPressed: () {
                auth.logout();

                Navigator.pushNamedAndRemoveUntil(
                    context, "/auth", (route) => false);
              },
              icon: const Icon(Icons.logout))
        ]);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
