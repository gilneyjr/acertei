import 'package:acertei/pages/cartoes.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'materias.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Inicial extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InicialState();
}

class InicialState extends State<Inicial> {
  TextEditingController usuarioController = TextEditingController();

  void irParaCartoes() {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => Cartoes()));
  }

  void irParaMaterias() {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => Materias()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 15, 15, 60),
        child: Column(
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
                    MaterialPageRoute(builder: (context) => Home()),
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
                'Jos?? da Silva',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Color(0xFFB8B8B8)),
                  bottom: BorderSide(width: 1.0, color: Color(0xFFB8B8B8)),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Text(
                          'Qnt. Respostas Certas',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            height: 2,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '10',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            height: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Text(
                          'Qnt. Respostas Erradas',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            height: 2,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '2',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            height: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Text(
                          'Qnt. Cart??es Adquiridos',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                            height: 2,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          '20',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 18,
                            height: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(30),
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 16,
                    crossAxisCount: 2,
                    children: [
                  SizedBox.expand(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: ElevatedButton(
                              onPressed: irParaCartoes,
                              child: Text(
                                'Cart??es',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 24),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF00A789), // background
                                  onPrimary: Colors.white // foreground
                                  )))),
                  SizedBox.expand(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: ElevatedButton(
                              onPressed: irParaMaterias,
                              child: Text(
                                'Perguntas',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 24),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF00A789), // background
                                  onPrimary: Colors.white // foreground
                                  ))))
                ]))
          ],
        ),
      ),
    );
  }
}
