import 'package:flutter/material.dart';
import 'package:listagem/vm/auth.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioController = TextEditingController(text: "");
    final passwordController = TextEditingController(text: "");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              width: 300,
              child: Column(
                children: [
                  TextField(
                    controller: usuarioController,
                    decoration: const InputDecoration(
                      labelText: "Usuário",
                    ),
                  ),
                  TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(labelText: "Senha"),
                    obscureText: true,
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(top: 10, bottom: 5),
                    child: ElevatedButton(
                        onPressed: () => login(
                              context,
                              usuarioController.text,
                              passwordController.text,
                            ),
                        child: const Text("Entrar")),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/recuperar");
                        },
                        child: const Text("Esqueci a Senha"),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/cadastrar");
                        },
                        child: const Text("Cadastrar"),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void login(BuildContext context, String usuario, String senha) {
    final login = Provider.of<Auth>(context, listen: false);

    try {
      login.login(usuario, senha);

      if (login.isLogado) {
        Navigator.popAndPushNamed(context, "/home");
      }
    } on Exception catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.toString())),
      );
    }
  }
}
