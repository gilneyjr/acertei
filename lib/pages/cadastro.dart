import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CadastroState();
}

class CadastroState extends State<Cadastro> {
  TextEditingController emailController = TextEditingController();
  TextEditingController usuarioController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController senha2Controller = TextEditingController();

  void resetarCampos() {
    emailController.clear();
    usuarioController.clear();
    senhaController.clear();
    senha2Controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Acertei!',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 167, 137),
                          fontWeight: FontWeight.w800,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'E-mail',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: usuarioController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nome de Usuário',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    controller: senhaController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Senha',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    controller: senha2Controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Confirmação de Senha',
                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Entrar',
                                        style: TextStyle(color: Colors.white)),
                                    style: ElevatedButton.styleFrom(
                                        primary: Color.fromARGB(
                                            255, 0, 84, 182), // background
                                        onPrimary: Colors.white // foreground
                                        )))),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text('Cadastro',
                                        style: TextStyle(color: Colors.white)),
                                    style: ElevatedButton.styleFrom(
                                        primary: Color.fromARGB(
                                            255, 0, 182, 0), // background
                                        onPrimary: Colors.white // foreground
                                        ))))
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}
