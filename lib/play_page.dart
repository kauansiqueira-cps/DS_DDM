import 'package:flutter/material.dart';
import 'package:listagem/musica.dart';

class PlayPage extends StatelessWidget {
  const PlayPage({super.key});

  @override
  Widget build(BuildContext context) {
    //ModalRoute.of(context) nos devolve um objeto que sinaliza de onde viemos
    //para chegar até aqui (qual a rota percorrida?)
    //nessa rota, o atributo settings representa as configurações realizadas na
    //rota no momento da partida
    //dentro desse atributo existe o atributo arguments de onde a gente consegue
    //receber paramentros da outra tela/windget
    final musica = ModalRoute.of(context)?.settings.arguments as Musica;

    final textTheme = Theme.of(context).textTheme;

    //esse MediaQuery.of(context) devolve informações sobre a tela
    //desse objeto vamos pegar o atributo size que representa o tamanho da tela)
    // e po width para pegar a largura da tela do device onde está sendo executado
    //
    //desse valor a gente subtrai 40 que corresponde a 20 margem esquerda e direita.
    final width = MediaQuery.of(context).size.width - 40;
    final height = width * 1080 / 1920;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(20),
          child: Column(
            children: [
              Image.asset(
                musica.capa,
                width: width,
                height: height,
                fit: BoxFit.fitWidth,
              ),
              Text(
                musica.nome,
                style: textTheme.headlineLarge,
              ),
              Text(
                musica.artista,
                style: textTheme.headlineSmall,
              ),
              Text(
                musica.album,
                style: textTheme.headlineSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
