import 'package:flutter/material.dart';
import 'tela1.dart';
import 'tela2.dart';
import 'tela3.dart';
import 'tela4.dart';
import 'tela5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rotas Nomeadas',
      initialRoute: '/',
      routes: {'/':(context) => const Tela1(),
        '/segundo':(context) => const Tela2(),
        '/terceiro':(context) => const Tela3(),
        '/quarto':(context) => const Tela4(),
        '/quinto':(context) => const Tela5(),
      },
    );
  }
}