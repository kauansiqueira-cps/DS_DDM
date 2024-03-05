import 'dart:math';

import 'package:flutter/material.dart';

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
    );
  }
}

//Essa classe representa o widget onde vamos montar
//nossa tela
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //SizedBox vai forçar o Contariner, que está
            //dentro dele, a ter o tamanho 200x200

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Container(
                    //através do BoxDecoration, Podemos
                    //customizar o aspecto visual de um
                    //Container
                    decoration: BoxDecoration(
                      //color: Colors.purple,
                      color: gerarCorAleatoria(),
                    ),

                    child: Center(
                        child: Text(
                          Random().nextInt(100).toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      )),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Container(
                      //através do BoxDecoration, Podemos
                      //customizar o aspecto visual de um
                      //Container
                      decoration: BoxDecoration(
                        //color: Colors.purple,
                        color: gerarCorAleatoria(),
                      ),
                      child: Center(
                        child: Text(
                          Random().nextInt(100).toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      )),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Container(
                    //através do BoxDecoration, Podemos
                    //customizar o aspecto visual de um
                    //Container
                    decoration: BoxDecoration(
                      //color: Colors.purple,
                      color: gerarCorAleatoria(),
                    ),
                    child: Center(
                        child: Text(
                          Random().nextInt(100).toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      )),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Container(
                    //através do BoxDecoration, Podemos
                    //customizar o aspecto visual de um
                    //Container
                    decoration: BoxDecoration(
                      //color: Colors.purple,
                      color: gerarCorAleatoria(),
                    ),
                    child: Center(
                        child: Text(
                          Random().nextInt(100).toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      )),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Container(
                    //através do BoxDecoration, Podemos
                    //customizar o aspecto visual de um
                    //Container
                    decoration: BoxDecoration(
                      //color: Colors.purple,
                      color: gerarCorAleatoria(),
                    ),
                    child: Center(
                        child: Text(
                          Random().nextInt(100).toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      )),
                ),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Container(
                    //através do BoxDecoration, Podemos
                    //customizar o aspecto visual de um
                    //Container
                    decoration: BoxDecoration(
                      //color: Colors.purple,
                      color: gerarCorAleatoria(),
                    ),
                    child: Center(
                        child: Text(
                          Random().nextInt(100).toString(),
                          style: const TextStyle(color: Colors.white),
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Color gerarCorAleatoria() {
  final random = Random();
  return Color.fromARGB(
      255, random.nextInt(256), random.nextInt(256), random.nextInt(256));
}

//todo projeto em dart começa com a execução
//pelo método main
void main() => runApp(const Aplicacao());
