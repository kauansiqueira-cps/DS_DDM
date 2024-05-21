import 'package:flutter/material.dart';
import 'package:listagem/entidade/musica.dart';
import 'package:listagem/vm/catalogo.dart';
import 'package:provider/provider.dart';

class ItemMusica extends StatelessWidget {
  //final String, por não poder receber mais de uma atribuição e por não aceitar nulo, nos obriga a atribuir valor via construtor
  final Musica musica;

  const ItemMusica({
    super.key,
    required this.musica,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final catalogo = Provider.of<Catalogo>(context);
    //GestureDetector permite que um Widget receba
    // eventos de interação com o usuario: click, double click, long click, etc
    return GestureDetector(
      onTap: () => catalogo.select(musica.id),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        child: Row(
          children: [
            Image.asset(
              musica.capa,
              width: 48,
              height: 48,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10),
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
                  Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            musica.artista,
                            style: textTheme.bodySmall,
                          ),
                          Text(
                            musica.album,
                            style: textTheme.bodySmall,
                          ),
                        ],
                      )),
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
