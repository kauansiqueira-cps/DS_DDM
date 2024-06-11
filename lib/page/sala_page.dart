import 'package:eu_truco/util/layout.dart';
import 'package:eu_truco/vm/jogador_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SalaPage extends StatelessWidget {
  const SalaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final jvm = Provider.of<JogadorViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sala"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: paddingTela(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Seja bem vindo, ${jvm.jogador?.nome ?? "Anônimo"}"),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Criar Sala"),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Encontrar Sala"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
