import 'package:acertei/pages/login.dart';
import 'package:flutter/material.dart';

class Inicial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InicialState();
}

class InicialState extends State<Inicial> {
  Color placeholderColor = Color(0xA0A0A0FF);
  Color textColor = Color(0x252525FF);
  TextEditingController usuarioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Inicial'),
        backgroundColor: Color(0xFF00A789),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 15, 15, 60),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(0),
              child: IconButton(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.topRight,
                icon: Icon(Icons.exit_to_app),
                tooltip: 'Sair',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(0),
              child: IconButton(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                alignment: Alignment.center,
                iconSize: 200,
                color: Color(0xFF00A789),
                icon: Icon(Icons.account_circle),
                onPressed: () {},
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(0),
              child: Text(
                  'José da Silva',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 30
                  ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Color(0xFFB8B8B8)),
                  bottom: BorderSide(width: 1.0, color: Color(0xFFB8B8B8)),
                ),
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                'Qnt. Respostas Certas',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 15
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
