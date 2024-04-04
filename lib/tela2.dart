import 'dart:math';

import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Tela2(),
    );
  }
}
class Tela2 extends StatefulWidget {
  const Tela2({super.key});


  @override
  State<Tela2> createState() => _HomePageState();
}

class _HomePageState extends State<Tela2> {
  TextEditingController pesoController = new TextEditingController();
  TextEditingController alturaController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limparImc(){
    pesoController.text= "";
    alturaController.text= "";
    setState(() {
      _textoInfo = "informa seus dados";
    });

  }
  void _imcPesoAltura(){
    setState(() {
      double peso = double.parse(pesoController.text);
      double altura = double.parse(alturaController.text);
      double imc = peso/pow((altura/100), 2);

      if(imc < 16.5){
        _textoInfo = "desnutrido(${imc})";
      }
      else if(imc <= 18.5){
        _textoInfo = "abaixo do peso(${imc})";
      }
      else if(imc<=24.9){
        _textoInfo = "peso ideal!!!!!!!!!!!(${imc})";
      }
      else if(imc<=29.9){
        _textoInfo = "levemente acima do peso(${imc})";
      }
      else if(imc<=34.9){
        _textoInfo = "obesidade grau 1(${imc})";
      }
      else if(imc<=39.9){
        _textoInfo = "obesidade grau 2 (severa) (${imc})";
      }
      else{
        _textoInfo = "obesidade grau 3 (mórbida) (${imc})";
      }

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de IMC"),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
        actions: <Widget>[
          IconButton(onPressed: _limparImc, icon: Icon(Icons.refresh))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.person_3_outlined,
              size: 120.0,
              color: Colors.cyanAccent,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Peso",
                labelStyle: TextStyle(color: Colors.cyanAccent),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: pesoController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Altura",
                labelStyle: TextStyle(color: Colors.cyanAccent),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: alturaController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                textStyle:
                                TextStyle(fontSize: 25.0),
                                backgroundColor: Colors.cyanAccent),
                            onPressed: _imcPesoAltura,
                            child: const Text("Calcular")
                        ),

                  ])
              ),
            ),
            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
