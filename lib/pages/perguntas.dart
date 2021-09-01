import 'package:acertei/model/perguntas.dart';
import 'package:acertei/pages/resultado.dart';
import 'package:flutter/material.dart';

class Perguntas extends StatefulWidget {
  final List<Pergunta> perguntas;
  Perguntas(this.perguntas);

  @override
  State<StatefulWidget> createState() => PerguntasState(perguntas);
}

class PerguntasState extends State<Perguntas> {
  List<Pergunta> perguntas;
  int perguntaAtual = 0;
  int acertou = 0;

  PerguntasState(this.perguntas);

  void responder(int resposta) {
    if (perguntas[perguntaAtual].responder(resposta)) acertou++;

    if (perguntaAtual >= perguntas.length - 1)
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) =>
                  Resultado(acertou, perguntas.length)));
    else
      setState(() {
        perguntaAtual++;
      });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        primary: Color(0xFF00A789),
        padding: EdgeInsets.all(25));
    return Scaffold(
        appBar: AppBar(
          title: Text('Pergunta ${perguntaAtual + 1}/${perguntas.length}'),
          centerTitle: true,
          backgroundColor: Color(0xFF00A789),
        ),
        body: Column(children: [
          Container(
              padding: EdgeInsets.all(20),
              child: Text(
                perguntas[perguntaAtual].enunciado,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 18),
              )),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(20),
              itemCount: perguntas[perguntaAtual].alternativas.length,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      child: Text(
                          '${perguntas[perguntaAtual].alternativas[index]}'),
                      onPressed: () {
                        responder(index);
                      },
                      style: style),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          )
        ]));
  }
}
