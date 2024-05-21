import 'package:flutter/material.dart';
import 'package:listagem/app.dart';
import 'package:listagem/repositorio/repositorio_musica.dart';
import 'package:listagem/vm/aparencia.dart';
import 'package:listagem/vm/auth.dart';
import 'package:listagem/vm/catalogo.dart';
import 'package:provider/provider.dart';

class ProvedorEstado extends StatelessWidget {
  const ProvedorEstado({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        criaAparencia(),
        criaAuth(),
        createCatalogo(RepositorioMusica().select()),
      ],
      child: const Aplicacao(),
    );
  }
}
