import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final = variavel que recebe algo apenas uma vez...
    final usuarioController = TextEditingController(text: "");
    final passwordController = TextEditingController(text: "");
    //final theme = Theme.of(context);
    //final textTheme = theme.textTheme;
    //final linkstyle = textTheme.bodyMedium?.copyWith(decoration: TextDecoration.underline);

    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      autocorrect: false,
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(top: 10, bottom: 5),
                      child: ElevatedButton(
                          onPressed: () => loga(context, usuarioController.text, passwordController.text), child: const Text("Entrar")),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loga(BuildContext context, String usuario, String senha) {
    if (usuario == "admin" && senha == "admin@123") {
      Navigator.pushNamed(context, "/home");
      return;
    }

    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text("Credencias inválidas")));
  }
}
