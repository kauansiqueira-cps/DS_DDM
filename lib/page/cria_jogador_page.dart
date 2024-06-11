import 'package:eu_truco/util/layout.dart';
import 'package:eu_truco/vm/jogador_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CriaJogadorPage extends StatelessWidget {
  const CriaJogadorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final jvm = Provider.of<JogadorViewModel>(context);

    final nomeController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Novo Jogador"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: paddingTela(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                TextField(
                  controller: nomeController,
                  decoration: const InputDecoration(
                    labelText: "Nome do Jogador",
                  ),
                ),
                Container(
                  margin: margemSuperiorBotao(),
                  width: double.maxFinite,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      jvm.criaJogador(nomeController.text);
                      Navigator.pushNamed(context, "/sala");
                    },
                    child: const Text("Entrar"),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  jvm.criaJogador(null);
                  Navigator.pushNamed(context, "/sala");
                },
                child: const Text("Anônimo"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
