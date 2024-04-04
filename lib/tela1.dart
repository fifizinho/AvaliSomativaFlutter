import 'package:flutter/material.dart';

class Tela1 extends StatefulWidget {
  const Tela1({super.key});

  @override
  State<Tela1> createState() => _HomePageState();
}

class _HomePageState extends State<Tela1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.add_business_sharp,
              size: 120.0,
              color: Colors.deepOrangeAccent,
            ),
            Text(
              "Aplicação Principal",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                      child: const Text("IMC"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/segundo');
                      }),
                  ElevatedButton(
                      child: const Text("Contador"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/terceiro');
                      }),
                  ElevatedButton(
                      child: const Text("Cadastro Usuario"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/quarto');
                      }),
                  ElevatedButton(
                      child: const Text("Cadastro de produtos"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/quinto');
                      }),
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}
