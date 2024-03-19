import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioController = TextEditingController(text: "");
    final passwordController = TextEditingController(text: "");

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final linkstyle = textTheme.bodyMedium?.copyWith(
      decoration: TextDecoration.underline
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Autenticação"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
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
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: const EdgeInsets.only(top: 10, bottom: 5),
                      child: ElevatedButton(
                          onPressed: () {
                            final usuario = usuarioController.text;
                            final senha = passwordController.text;
                            var message = "Credenciais inválidas";

                            if (usuario == "admin" && senha == "102030") {
                              message = "Seja bem vindo, Adminstrador";
                            }

                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(message)),
                            );
                          },
                          child: const Text("Entrar")),
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Precisa de Ajuda?",
                        style: linkstyle),
                        Text("Cadastre-se",
                        style: linkstyle),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("2H3"),
                Text("PAM 1"),
                Text("2024"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 400,
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(labelText: "Nome"),
                  ),
                  const TextField(
                    decoration: InputDecoration(labelText: "Email"),
                  ),
                  const TextField(
                    decoration: InputDecoration(labelText: "Senha"),
                    obscureText: true,
                  ),
                  const TextField(
                    decoration: InputDecoration(labelText: "Confirmar a Senha"),
                    obscureText: true,
                  ),
                  Container(
                    width: double.maxFinite,
                    margin: const EdgeInsets.only(top: 10, bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Salvar")),
                        ElevatedButton(
                            onPressed: () {}, child: const Text("Cancelar")),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
