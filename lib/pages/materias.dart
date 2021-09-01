import 'package:acertei/model/perguntas.dart';
import 'package:acertei/pages/perguntas.dart';
import 'package:flutter/material.dart';

class Materias extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MateriasState();
}

class MateriasState extends State<Materias> {
  void click(List<Pergunta> perguntas) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => Perguntas(perguntas)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
          backgroundColor: Color(0xFF00A789),
        ),
        body: Column(children: [
          Container(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Center(
                  child: Text(
                'Selecione a matéria desejada',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 20),
              ))),
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
                            onPressed: () {
                              click(PerguntasProvider.getPortugues());
                            },
                            child: Text(
                              'Português',
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
                            onPressed: () {
                              click(PerguntasProvider.getMatematica());
                            },
                            child: Text(
                              'Matemática',
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
                            onPressed: () {
                              click(PerguntasProvider.getHistoria());
                            },
                            child: Text(
                              'História',
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
                            onPressed: () {
                              click(PerguntasProvider.getGeografia());
                            },
                            child: Text(
                              'Geografia',
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
        ]));
  }
}
