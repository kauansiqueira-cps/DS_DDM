import 'package:eu_truco/app.dart';
import 'package:eu_truco/vm/jogador_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MultiProviderApp extends StatelessWidget {
  const MultiProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        JogadorViewModel.novo(),
      ],
      child: const Aplicacao(),
    );
  }
}
