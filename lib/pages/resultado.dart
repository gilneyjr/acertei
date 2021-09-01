import 'package:flutter/material.dart';

import 'inicial.dart';

class Resultado extends StatefulWidget {
  final imagesList = [
    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
  ];

  final int acertou;
  final int total;

  Resultado(this.acertou, this.total);

  @override
  State<StatefulWidget> createState() => ResultadoState(acertou, total);
}

class ResultadoState extends State<Resultado> {
  int acertou;
  int total;

  ResultadoState(this.acertou, this.total);

  void irParaTelaInicial() {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => Inicial()));
  }

  @override
  Widget build(BuildContext context) {
    final title = 'Resultado';
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        backgroundColor: Color(0xFF00A789),
      ),
      body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Text(
                    "Você acertou $acertou de $total questões!",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Center(
                  child: Text(
                    "Seu prêmio é:",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      image: NetworkImage(
                          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"),
                    ),
                  ),
                ),
              ),
              Container(
                child: Center(
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: irParaTelaInicial,
                      child: Text('OK', style: TextStyle(color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 0, 182, 0), // background
                          onPrimary: Colors.white // foreground
                          ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
