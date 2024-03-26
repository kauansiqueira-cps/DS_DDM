import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

void main() => runApp(const Aplicacao());

// flutter pub add intl = no terminal,biblioteca de formatação internacional
final formatter = NumberFormat.currency(
  locale: "pt-BR",
  symbol: "R\$",
);

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
    final valorController = TextEditingController();
    final taxaController = TextEditingController();
    final pagamentoController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 100, right: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Valor"),
              keyboardType: TextInputType.number,
              inputFormatters: decimalNumber(),
              controller: valorController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Taxa de Juros"),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                TextInputFormatter.withFunction((oldValue, newValue) {
                  final text = newValue.text;
                  if (text.isEmpty) {
                    return newValue;
                  } else if (double.tryParse(text) == null) {
                    return oldValue;
                  } else {
                    return newValue;
                  }
                }),
              ],
              controller: taxaController,
            ),
            TextField(
              decoration:
                  const InputDecoration(labelText: "Quantidade Pagamento"),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: pagamentoController,
            ),
            ElevatedButton(
                onPressed: () => calcular(context, valorController.text,
                    taxaController.text, pagamentoController.text),
                child: const Text("Calcular"))
          ],
        ),
      ),
    );
  }

  List<TextInputFormatter> decimalNumber() => [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
        TextInputFormatter.withFunction((oldValue, newValue) {
          final text = newValue.text;
          if (text.isEmpty) {
            return newValue;
          } else if (double.tryParse(text) == null) {
            return oldValue;
          } else {
            return newValue;
          }
        }),
      ];
}

void calcular(BuildContext context, String valor1, valor2, valor3) {
  final valor = double.parse(valor1);
  final taxa = double.parse(valor2);
  final pagamento = double.parse(valor3);
  final juros = valor * (taxa / 100) * pagamento;
  final total =
      "${formatter.format(valor)} emprestado por $pagamento meses com juros de $taxa%, parcelas = ${formatter.format(valor + juros)}";

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(total), duration: const Duration(seconds: 3)),
  );
}
