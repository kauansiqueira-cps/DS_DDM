import 'package:flutter/material.dart';
import 'package:listagem/vm/auth.dart';
import 'package:provider/provider.dart';

class BarraTitulo extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const BarraTitulo({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final auth = Provider.of<Auth>(context);
    final usuario = auth.isLogado ? auth.usuario.nome : "Anônimo";

    return AppBar(
      backgroundColor: colorScheme.inversePrimary,
      title: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textTheme.titleLarge,
          ),
          Text(
            "Nome do Usuario : $usuario",
            style: textTheme.titleSmall,
          ),
        ],
      ),
      actions: [
        IconButton(
          onPressed: () {
            auth.logout();
            
            Navigator.pushNamedAndRemoveUntil(
              context,
              "/login",
              (route) => false,
            );
          },
          icon: const Icon(Icons.logout),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
