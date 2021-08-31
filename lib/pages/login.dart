import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  Color placeholderColor = Color(0xA0A0A0FF);
  Color textColor = Color(0x252525FF);
  TextEditingController usuarioController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  void resetarCampos() {
    usuarioController.clear();
    senhaController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Acertei',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                )),
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
                child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Cadastro',
                          style: TextStyle(color: Colors.white, fontSize: 30))),
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Entrar',
                        style: TextStyle(color: Colors.white, fontSize: 30)))
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ))
          ],
        ),
      ),
      //   body: Center(
      //       child: Column(children: [
      // TextFormField(
      //   keyboardType: TextInputType.text,
      //   decoration: InputDecoration(
      //       labelText: "Nome de Usuário",
      //       labelStyle: TextStyle(color: placeholderColor)),
      //   textAlign: TextAlign.start,
      //   style: TextStyle(color: textColor, fontSize: 30),
      //   controller: usuario,
      //   validator: (value) {
      //     if (value == null || value.isEmpty)
      //       return "O nome de usuário não pode ser vazio.";
      //   },
      // ),
      // ]))
    );
    // return Center(
    //     child: Column(
    //   children: [
    //     TextFormField(
    //       keyboardType: TextInputType.text,
    //       decoration: InputDecoration(
    //           labelText: "Nome de Usuário",
    //           labelStyle: TextStyle(color: placeholderColor)),
    //       textAlign: TextAlign.start,
    //       style: TextStyle(color: textColor, fontSize: 30),
    //       controller: usuario,
    //       validator: (value) {
    //         if (value == null || value.isEmpty)
    //           return "O nome de usuário não pode ser vazio.";
    //       },
    //     ),
    //     TextFormField(
    //       keyboardType: TextInputType.visiblePassword,
    //       decoration: InputDecoration(
    //           labelText: "Senha",
    //           labelStyle: TextStyle(color: placeholderColor)),
    //       textAlign: TextAlign.start,
    //       style: TextStyle(color: textColor, fontSize: 30),
    //       controller: senha,
    //       validator: (value) {
    //         if (value == null || value.isEmpty)
    //           return "A senha não pode ser vazia.";
    //       },
    //     )
    //   ],
    // ));
  }
}
