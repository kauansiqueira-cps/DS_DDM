import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final database = FirebaseDatabase.instance;
    final ref = database.ref("alunos/756");

    ref.set({
      "nome": "Koyate",
      "email": "aaaaa@gmail.com",
      "notas": [
        {
          "componente": "PAMI",
          "Nota": 10,
        },
        {
          "componente": "TCC",
          "Nota": 7.3,
        }
      ],
      
    });
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
