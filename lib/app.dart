import 'package:flutter/material.dart';
import 'package:navegacao/home_page.dart';
import 'package:navegacao/login_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //em que rota o meu aplicativo deve começar
      initialRoute: "/login",
      //mapa das rotas disponiveis no aplicativo(todas as telas)
      routes: {
        "/login": (_) => const LoginPage(),
        "/home": (_) => const HomePage()
      },
    );
  }
}
