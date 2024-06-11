import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import '../entidade/jogador.dart';

class JogadorViewModel extends ChangeNotifier {
  Jogador? _jogador;

  void criaJogador(String? nome) {
    _jogador = nome != null ? Jogador.nome(nome) : Jogador.anonimo();

    notifyListeners();
  }

  Jogador? get jogador => _jogador!;

  static ChangeNotifierProvider<JogadorViewModel> novo() =>
      ChangeNotifierProvider(create: (_) => JogadorViewModel());
}
