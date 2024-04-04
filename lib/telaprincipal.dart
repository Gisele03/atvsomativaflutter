import 'package:flutter/material.dart';
import 'imc.dart';
import 'contador.dart';
import 'usuario.dart';
import 'produto.dart';

class Telaprincipal extends StatelessWidget{
  const Telaprincipal({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: const Text ('MENU'),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),

        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),

          child: Column(

              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                const Icon(
                  Icons.store,
                  size: 120.0,
                  color: Colors.grey,
                ),

                Column(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    const Text(
                      'Aplicação principal',
                      style: TextStyle(color: Colors.black, fontSize: 25.0),
                    ),

                    SizedBox(
                      width: 1000.0,
                      child:  ElevatedButton(
                        child: const Text('IMC'),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Imc()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 1000.0,
                      child:  ElevatedButton(
                        child: const Text('Contador'),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Contador()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 1000.0,
                      child:  ElevatedButton(
                        child: const Text('Cadastro de usuario'),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Usuario()),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 1000.0,
                      child:  ElevatedButton(
                        child: const Text('Cadastro de produto'),
                        onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Produto()),
                          );
                        },
                      ),
                    ),


                  ],
                )
              ]
          ),
        )
    );
  }
}



