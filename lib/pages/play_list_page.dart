import 'package:flutter/material.dart';
import 'package:listagem/componentes/barra_titulo.dart';
import 'package:listagem/componentes/item_musica.dart';
import 'package:listagem/repositorio/repositorio_musica.dart';

class PlayListPage extends StatelessWidget {
  const PlayListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final repositorio = RepositorioMusica();
    final musicas = repositorio.select();

    return Scaffold(
      appBar: const BarraTitulo(title: "Play List",),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: musicas.length,
        itemBuilder: (context, index) => ItemMusica(
          musica: musicas[index],
        ),
        separatorBuilder: (context, index) =>
            const Divider(color: Colors.black),
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