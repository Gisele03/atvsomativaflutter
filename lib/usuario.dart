import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Usuario(),
    );
  }
}

class Usuario extends StatefulWidget {
  const Usuario({super.key});


  @override
  State<Usuario> createState() => _HomePageState();
}

class _HomePageState extends State<Usuario> {
  TextEditingController usuarioController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar_Tela(){
    usuarioController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados";
    });
  }

  void _cadastrar(){
    usuarioController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "Usuario cadastrado com sucesso!";

    });




  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro de Usuario"),
        centerTitle: true,
        backgroundColor: Colors.green,
        actions: <Widget>[
          IconButton(
              onPressed: _limpar_Tela,
              icon: Icon(Icons.refresh))
        ],

      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),


        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.person_outline,
              size: 120.0,
              color: Colors.green,
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "USUARIO",
                  labelStyle: TextStyle(color: Colors.blueGrey)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: usuarioController,
            ),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "SENHA",
                  labelStyle: TextStyle(color: Colors.blueGrey)
              ),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: senhaController,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height:50.0,
                child: ElevatedButton(
                    onPressed: _cadastrar,
                    child: const Text("Cadastrar")
                ),
              ),
            ),

            Text(
              _textoInfo,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 25.0
              ),
            ),
          ],
        ),
      ),
    );
  }
}