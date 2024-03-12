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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home"),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Atividade"),
                Text("Avaliativa"),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                children: [
                  Text("Nome: Kauan Guilherme Siqueira"),
                  Text("Email: kauan.siqueira2@etec.sp.gov.br"),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("2H3"),
                    Text("Matão"),
                  ],
                ),
                Text("2024"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
