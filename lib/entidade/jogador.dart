import 'package:uuid/uuid.dart';

class Jogador {
  final String id;
  final String nome;

  Jogador._({
    required this.id,
    required this.nome,
  });

  factory Jogador.nome(String nome) {
    return Jogador._(
      id: const Uuid().v4().toString(),
      nome: nome,
    );
  }

  factory Jogador.anonimo() {
    return Jogador._(
      id: const Uuid().v4().toString(),
      nome: "Jogador ${DateTime.now().millisecondsSinceEpoch}",
    );
  }
}
