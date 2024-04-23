import 'package:flutter/material.dart';
import 'package:listagem/home_page.dart';
import 'package:listagem/play_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

    initialRoute: '/',
    routes: {
    '/': (_) => const HomePage(),
    '/play': (_) => const PlayPage(),
  },
      debugShowCheckedModeBanner: false,
    );
  }
}