import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Tela4(),
    );
  }
}

class Tela4 extends StatefulWidget {
  const Tela4({super.key});

  @override
  State<Tela4> createState() => _HomePageState();
}

class _HomePageState extends State<Tela4> {
  TextEditingController usuarioController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar() {
    usuarioController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "informa seus dados";
    });
  }

  void _cadastrar() {


    String user = usuarioController.text;
    String senha = senhaController.text;
    setState(() {
      if (user.isEmpty || senha.isEmpty) {
        _textoInfo = "Erro ao cadastrar usuário";
      } else {
        _textoInfo = "Dados cadastrados com sucesso!";
        usuarioController.text = "";
        senhaController.text = "";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Usuario"),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
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
              Icons.lock_person,
              size: 120.0,
              color: Colors.cyanAccent,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Usuario",
                labelStyle: TextStyle(color: Colors.cyanAccent),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: usuarioController,
            ),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(color: Colors.cyanAccent),
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: senhaController,
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
                                backgroundColor: Colors.cyanAccent),
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
