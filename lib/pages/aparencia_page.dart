import 'package:flutter/material.dart';
import 'package:listagem/vm/aparencia.dart';
import 'package:provider/provider.dart';

class AparenciaPage extends StatelessWidget {
  const AparenciaPage({super.key});

  @override
  Widget build(BuildContext context) {
    final aparencia = Provider.of<Aparencia>(context);

    final label = aparencia.isDark ? "Mudar Claro" : "Modo Escuro";
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configurações"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              if (aparencia.isDark) {
                aparencia.useLight();
              } else {
                aparencia.useDark();
              }
            },
            child: Text(label)),
      ),
    );
  }
}
