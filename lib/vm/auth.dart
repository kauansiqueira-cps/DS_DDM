import 'package:flutter/foundation.dart';
import 'package:listagem/entidade/usuario.dart';
import 'package:provider/provider.dart';

class Auth extends ChangeNotifier {
  late Usuario _usuario;
  late bool _logado = false;

  void login(String username, String password) {
    if (username == "admin" && password == "123") {
      _usuario = Usuario(
        username: username,
        email: "admin@admin.com",
        nome: "Administrador",
      );

      _logado = true;

      notifyListeners();
      return;
    }

    throw Exception("Credencias Invalidas");
  }

  void logout() {
    _logado = false;
    notifyListeners();
  }

  Usuario get usuario => _usuario;
  bool get isLogado => _logado;
}

ChangeNotifierProvider<Auth> criaAuth() =>
    ChangeNotifierProvider(create: (_) => Auth());