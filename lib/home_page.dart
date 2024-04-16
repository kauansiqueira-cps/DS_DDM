import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _ItemMusica(
            numero: "01",
            nome: "Corn",
            artista: "Maretu",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "02",
            nome: "Buy this for me",
            artista: "Rory in early 20s",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "03",
            nome: "Insolet object",
            artista: "Amane",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "04",
            nome: "The Happiest Comite",
            artista: "Hatsune Miku",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "05",
            nome: "Mind Brand",
            artista: "Maretu",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "06",
            nome: "Blood//Water",
            artista: "Não sei",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "07",
            nome: "Namida",
            artista: "Maretu",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "08",
            nome: "Not Allowed",
            artista: "TV Girl",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "09",
            nome: "Perfect Nothing",
            artista: "Não sei 2",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "10",
            nome: "Prescription",
            artista: "Não lembro",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "11",
            nome: "Arms Tonite",
            artista: "Mother Mother",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "12",
            nome: "HayLoft II",
            artista: "Mother Mother",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "13",
            nome: "KingSlayer",
            artista: "Bring me on Horazion",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "14",
            nome: "Colliding Stars",
            artista: "Não lembro",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "15",
            nome: "Genesis",
            artista: "Grimes",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "16",
            nome: "BreezeBlocks",
            artista: "Não faço ideia",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "17",
            nome: "daydreaming",
            artista: "Rebyyzx",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "18",
            nome: "Old Doll",
            artista: "Mad Father ?",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
          _ItemMusica(
            numero: "19",
            nome: "It Almost Worked",
            artista: "TV Girl",
            duracao: "${randomNumber()}:${randomNumber()}",
          ),
        ],
      ),
    );
  }
}

class _ItemMusica extends StatelessWidget {
  //final String, por não poder receber mais de uma atribuição e por não aceitar nulo, nos obriga a atribuir valor via construtor
  final String numero;
  final String nome;
  final String artista;
  final String duracao;

  const _ItemMusica({
    super.key,
    required this.numero,
    required this.nome,
    required this.artista,
    required this.duracao,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: Text(numero),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(nome),
              Text(artista),
            ],
          ),
        ),
        Text(duracao),
      ],
    );
  }
}

randomNumber() {
  final random = Random();
  final randomText = random.nextInt(59); // Gere um número aleatório
  if (randomText <= 9) {
    return randomText * 10;
  }
  if (randomText == 0) {
    return randomText + 10;
  }
  return randomText;
}
