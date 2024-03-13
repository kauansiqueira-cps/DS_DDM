import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: theme.textTheme.titleLarge?.copyWith(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "lib/assets/images/CapaMenorQualidade.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.fitHeight,
            ),
            const Text("Nome do Filme: Bleach The Hell Verse"),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Ano Lançamento: 2010"),
                Text("Duração: 1h34m"),
              ],
            ),
            const Text("Diretor: Noriyuki Abe"),
            //const Text("Classificação: Crianças com menos de 16 anos não são permitidas."),
            const Text("Classificação: 4.7⭐"),
          ],
        ),
      ),
    );
  }
}
