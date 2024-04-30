import 'package:flutter/material.dart';
import 'package:listagem/pages/home_page.dart';
import 'package:listagem/pages/play_list_page.dart';
import 'package:listagem/pages/play_page.dart';
import 'package:listagem/util/tema.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        '/': (_) => const HomePage(),
        "/play-list": (_) => const PlayListPage(),
        '/play': (_) => const PlayPage(),
      },
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      theme: temaPadrao(),
    );
  }
}