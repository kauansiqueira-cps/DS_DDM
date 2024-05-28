import 'package:atividade/entidade/tarefa.dart';
import 'package:atividade/util/data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TarefaListItem extends StatelessWidget {
  final Tarefa tarefa;

  const TarefaListItem({
    super.key,
    required this.tarefa,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tarefa.title,
              style: textTheme.bodyLarge,
            ),
            SizedBox(
              width: double.maxFinite,
              child: Text(
                tarefa.description,
                style: textTheme.bodySmall,
              ),
            ),
            Text(
              "Status: ${tarefa.status}",
              style: textTheme.bodySmall,
            ),
            Inicio(tarefa),
            // Text(
            //   "Iniciada em: ${formataData(tarefa.criadoEm)}"
            // ),
          ],
        ),
      ),
    );
  }
}

Widget Inicio(Tarefa tarefa) {
  final formatarData = DateFormat("dd/MM/yyyy");

  final tempo = formatarData.format(DateTime.now());
  if (tarefa.status == "DOING") {
    return Text("Iniciada em: $tempo");
  }
  if(tarefa.status == "DONE") {
    return Text("Completa em: $tempo");
  }
  return const Text('');
}
