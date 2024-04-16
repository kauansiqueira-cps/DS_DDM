import 'package:flutter/material.dart';
import 'package:listagem/musica.dart';
import 'package:listagem/repositorio_musica.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final repositorio = RepositorioMusica();
    final musicas = repositorio.select();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: musicas.length,
        itemBuilder: (context, index) => _ItemMusica(
          musica: musicas[index],
        ),
        separatorBuilder: (context, index) =>
            Divider(color: index % 2 == 0 ? Colors.black : Colors.grey),
      ),
      //Itens são construido automaticamente pelo ListView
      //Adequado para uso de listas dinamicas (por exemplo:
      //itens que viera de um banco de dados)
      /*
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: musicas.length,
        itemBuilder: (context, index) => _ItemMusica(
          musica: musicas[index],
        ),
      ),
      */
      // body: ListView(
      //   padding: const EdgeInsets.all(20),
      //   children: musicas.map((item) => _ItemMusica(musica: item)).toList(),
      // ),
    );
  }
}

class _ItemMusica extends StatelessWidget {
  //final String, por não poder receber mais de uma atribuição e por não aceitar nulo, nos obriga a atribuir valor via construtor
  final Musica musica;

  const _ItemMusica({
    super.key,
    required this.musica,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    //GestureDetector permite que um Widget receba
    // eventos de interação com o usuario: click, double click, long click, etc
    return GestureDetector(
      onTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Você clicou em: ${musica.nome}"))),
      onDoubleTap: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Você clicou em: ${musica.artista}"))),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 10),
              child: Text(musica.numero),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    musica.nome,
                    style: textTheme.bodyLarge,
                  ),
                  Text(
                    musica.artista,
                    style: textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            Text(musica.duracao),
          ],
        ),
      ),
    );
  }
}
