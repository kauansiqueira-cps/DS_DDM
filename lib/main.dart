import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

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
    final num1Controller = TextEditingController();
    final num2Controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 70, right: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Número 1"),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: num1Controller,
            ),
            Text(
              "+     -     /     *",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Número 2"),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: num2Controller,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //soma
                ElevatedButton(
                  onPressed: () =>
                      soma(context, num1Controller.text, num2Controller.text),
                  child: const Text("+"),
                ),
                //subtração
                ElevatedButton(
                  onPressed: () => subtrair(
                      context, num1Controller.text, num2Controller.text),
                  child: const Text("-"),
                ),
                //divisao
                ElevatedButton(
                  onPressed: () => divisao(
                      context, num1Controller.text, num2Controller.text),
                  child: const Text("/"),
                ),
                //multiplicacao
                ElevatedButton(
                  onPressed: () =>
                      mult(context, num1Controller.text, num2Controller.text),
                  child: const Text("*"),
                ),
            ElevatedButton(
                onPressed: () {
                  num1Controller.clear();
                  num2Controller.clear();
                },
                child: const Text("Limpar"))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void soma(BuildContext context, String valor1, valor2) {
  final num1 = int.parse(valor1);
  final num2 = int.parse(valor2);
  final mensagem = "$num1 + $num2 = ${num1 + num2}";
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(mensagem), duration: const Duration(seconds: 3)),
  );
}

void subtrair(BuildContext context, String valor1, valor2) {
  final num1 = int.parse(valor1);
  final num2 = int.parse(valor2);
  final mensagem = "$num1 - $num2 = ${num1 - num2}";
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(mensagem), duration: const Duration(seconds: 3)),
  );
}

void divisao(BuildContext context, String valor1, valor2) {
  final num1 = int.parse(valor1);
  final num2 = int.parse(valor2);
  final mensagem = "$num1 / $num2 = ${num1 / num2}";
  if (num2 == 0) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Não da pra dividir algo por 0"),
        duration: Duration(seconds: 3),
      ),
    );
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(mensagem), duration: const Duration(seconds: 3)),
    );
  }
}

void mult(BuildContext context, String valor1, valor2) {
  final num1 = int.parse(valor1);
  final num2 = int.parse(valor2);
  final mensagem = "$num1 * $num2 = ${num1 * num2}";
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(mensagem), duration: const Duration(seconds: 3)),
  );
}
