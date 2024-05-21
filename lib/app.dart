import 'package:flutter/material.dart';
import 'package:listagem/pages/cadastrar_page.dart';
import 'package:listagem/pages/home_page.dart';
import 'package:listagem/pages/login_page.dart';
import 'package:listagem/pages/play_list_page.dart';
import 'package:listagem/pages/play_page.dart';
import 'package:listagem/pages/recuperar_senha_page.dart';
import 'package:listagem/util/tema.dart';
import 'package:listagem/vm/aparencia.dart';
import 'package:provider/provider.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    //Provider.of<Aparencia>(context) faz com que o provider (nesse caso
    //nosso gerenciador de estado compartilhado) consulte se existe algum
    //provedor para a calsse Aparencia e nos devolva uma instancia dela
    final aparencia = Provider.of<Aparencia>(context);

    return MaterialApp(
      title: "Spotify 2.0 Sem Virus HD 4k 100% Atualizado",
      routes: {
        "/home": (_) => const HomePage(),
        "/play-list": (_) => const PlayListPage(),
        "/play": (_) => const PlayPage(),
        '/login': (_) => const LoginPage(),
        '/cadastrar': (_) => const CadastrarPage(),
        '/recuperar': (_) => const RecuperarSenhaPage(),
      },
      initialRoute: '/login',
      debugShowCheckedModeBanner: false,
      theme: temaPadrao(aparencia.isDark),
    );
  }
}
