import 'package:flutter/material.dart';
import 'package:listagem/componentes/barra_titulo.dart';
import 'package:listagem/entidade/musica.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:listagem/vm/catalogo.dart';
import 'package:provider/provider.dart';

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

//
    //final argumento = ModalRoute.of(context)?.settings.arguments;
    final catalogo = Provider.of<Catalogo>(context);
    final musica = catalogo.selecionada;
    final veioMusica = musica != null;

    //final textTheme = Theme.of(context).textTheme;

    //esse MediaQuery.of(context) devolve informações sobre a tela
    //desse objeto vamos pegar o atributo size que representa o tamanho da tela)
    // e po width para pegar a largura da tela do device onde está sendo executado
    //
    //desse valor a gente subtrai 40 que corresponde a 20 margem esquerda e direita.
    // final width = MediaQuery.of(context).size.width - 40;
    // final height = width * 1080 / 1920;

    // final double width = getImageWidth(context);
    // final double height = getImageHeight(context);

    return Scaffold(
      
      body:
          veioMusica ? body(context, musica) : bodyEmpty(context),
    );
  }

  double getImageWidth(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    if (kIsWeb) {
      return screenSize.width / 2;
    }

    return screenSize.width - 40;
  }

  double getImageHeight(BuildContext context) {
    final width = getImageWidth(context);
    return width * 1080 / 1050;
  }

  Widget bodyEmpty(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Nehuma música foi informada. Volte e selecione uma música",
            style: textTheme.titleMedium,
          ),
        ],
      ),
    );
  }

  Widget body(BuildContext context, Musica musica) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          children: [
            Image.asset(
              musica.capa,
              width: getImageWidth(context),
              height: getImageHeight(context),
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
    );
  }
}
