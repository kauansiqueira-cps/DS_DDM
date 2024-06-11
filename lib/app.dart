import 'package:eu_truco/page/cria_jogador_page.dart';
import 'package:eu_truco/page/sala_page.dart';
import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Truquinho da Fé",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.indigo,
      )),
      initialRoute: "/cria-jogador",
      routes: {
        "/cria-jogador": (_) => const CriaJogadorPage(),
        "/sala": (_) => const SalaPage(),
      },
    );
  }
}
