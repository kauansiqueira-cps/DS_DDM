import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String numero = "";

  Color corDoTexto = Colors.black;
  String mensagem = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: "Informe um número par",
              ),
              onChanged: (value) {
                setState(() {
                  numero = value;
                });

                onChangeText(value);
              },
            ),
            Text("Número: $numero"),
            Text(
              mensagem,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: corDoTexto,
                  ),
            ),
          ],
        ),
      ),
    );
  }

  void onChangeText(String value) {
    if (value.isEmpty) {
      setState(() {
        mensagem = "";
        corDoTexto = Colors.black;
      });
    
      return;
    }
    
    // TryParse tenta converter, se conseguir devolve o numero convertido senão, devolve nulo
    var numero = int.tryParse(value);

    if (numero == null) {
      //toda e qualquer alteração no estado tem que ser feita via setState((){...})
      setState(() {
        mensagem = "Ao menos coloque um número inteiro...";
        corDoTexto = Colors.purpleAccent;
      });
    } else if (numero % 2 == 0) {
      setState(() {
        mensagem = "Obrigado!";
        corDoTexto = Colors.black;
      });
    } else {
      setState(() {
        mensagem = "Tem certeza que sabe de par...?";
        corDoTexto = Colors.redAccent;
      });
    }
  }
}
