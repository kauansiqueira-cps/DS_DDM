import 'dart:math';

import 'package:flutter/material.dart';

//todo projeto em dart começa com a execução
//pelo método main
void main() => runApp(const Aplicacao());

//Essa classe representa o Windget responsável
//por gerir todo o meu app

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  //Método onde devemos indicar o que nosos widget
  //irá apresentar: como será sua composição?
  //o que ele mostra ao usuario ?

  @override
  Widget build(BuildContext context) {
    //A classe MaterialApp é uma classe que segue
    //as regras do material (marterial.io) e sabe
    //gerenciar um app como um todo

    return const MaterialApp(
      home: HomePage(),
      //tirar o debug da tela
      debugShowCheckedModeBanner: false,
    );
  }
}

//Essa classe representa o widget onde vamos montar
//nossa tela
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //Botão que Recarrega o coiso
        actions: [
          IconButton(
              onPressed: () => setState(() {}),
              icon: const Icon(Icons.refresh)),
        ],
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            caixa(),
            duasCaixas(),
            tresCaixas(),
            duasCaixas(),
            caixa(),
          ],
        ),
      ),
    );
  }

  Widget caixa() {
    return SizedBox(
      width: 100,
      height: 100,
      child: Container(
        decoration: BoxDecoration(
          /*gradient: LinearGradient(
            colors: [
              gerarCorAleatoria(),
              gerarCorAleatoria(),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),*/
          color: gerarCorAleatoria(),
        ),
        child: numeroAleatorio(),
      ),
    );
  }

  Widget linha(List<Widget> items) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: items,
    );
  }

  Widget duasCaixas() {
    return linha([
      caixa(),
      caixa(),
    ]);
  }

  Widget tresCaixas() {
    return linha([
      caixa(),
      caixa(),
      caixa(),
    ]);
  }

  Widget numeroAleatorio() {
    return Center(
      child: randomNumber(),
    );
  }

}

Text randomNumber() {
  final random = Random();
  final randomText = random.nextInt(100).toString(); // Gere um número aleatório
  return Text(
    randomText,
    style: const TextStyle(color: Colors.white),
  );
}

Color gerarCorAleatoria() {
  final random = Random();
  return Color.fromARGB(
      255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
}