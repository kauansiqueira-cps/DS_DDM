import 'package:flutter/foundation.dart';
import 'package:listagem/entidade/musica.dart';
import 'package:provider/provider.dart';

class Catalogo extends ChangeNotifier {
  final List<Musica> musicas;
  Musica? _selecionada;

  Catalogo({
    required this.musicas,
  });

  Musica? findById(String id) {
    return musicas.where((m) => m.id == id).firstOrNull;
  }

  void select(String id) {
    _selecionada = findById(id);
    notifyListeners();
  }

  Musica? get selecionada => _selecionada;
}

ChangeNotifierProvider<Catalogo> createCatalogo(List<Musica> musicas) =>
    ChangeNotifierProvider(
      create: (_) => Catalogo(musicas: musicas),
    );
