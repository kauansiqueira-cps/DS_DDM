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
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),

      body: const Padding(
        padding:  EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Atividade"),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nome: Kauan Guilherme Siqueira"),
                  Text("Email: kauan.siqueira2@etec.sp.gov.br"),
                  Text("Idade: 16 Anos"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("2H3"),
                  Text("2024"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
