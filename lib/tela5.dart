import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Tela5(),
    );
  }
}

class Tela5 extends StatefulWidget {
  const Tela5({super.key});

  @override
  State<Tela5> createState() => _HomePageState();
}

class _HomePageState extends State<Tela5> {
  TextEditingController nomeController = new TextEditingController();
  TextEditingController precoController = new TextEditingController();
  TextEditingController descricaoController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar() {
    nomeController.text = "";
    precoController.text = "";
    descricaoController.text = "";
    setState(() {
      _textoInfo = "informa seus dados";
    });
  }

  void _cadastrar() {


    String name = nomeController.text;
    String preco = precoController.text;
    String descricao = descricaoController.text;
    setState(() {
      if (name.isEmpty || preco.isEmpty || descricao.isEmpty) {
        _textoInfo = "Erro ao cadastrar produto";
      } else {
        _textoInfo = "Dados cadastrados com sucesso!";
        nomeController.text = "";
        precoController.text = "";
        descricaoController.text = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Produtos"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: <Widget>[
          IconButton(onPressed: _limpar, icon: Icon(Icons.refresh))
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.shopping_bag,
              size: 120.0,
              color: Colors.deepPurple,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Nome",
                labelStyle: TextStyle(color: Colors.deepPurple),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: nomeController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Preço",
                labelStyle: TextStyle(color: Colors.deepPurple),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: precoController,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Descrição",
                labelStyle: TextStyle(color: Colors.deepPurple),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: descricaoController,
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
                                textStyle: TextStyle(fontSize: 25.0),
                                backgroundColor: Colors.white70),
                            onPressed: _cadastrar,
                            child: const Text("Cadastrar")),
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
