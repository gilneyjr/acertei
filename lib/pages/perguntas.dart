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
    final List<String> alternativas = <String>[
      'Cabeça',
      'Pulmões',
      'Pele',
      'Estômago'
    ];
    final title = 'Perguntas';
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
            title: Text(title),
            centerTitle: true,
            backgroundColor: Color(0xFF00A789),
          ),
          body: Column(children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Text(perguntas[perguntaAtual].enunciado),
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: perguntas[perguntaAtual].alternativas.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    color: Colors.green.withOpacity(0.5),
                    child: Center(
                      child: ElevatedButton(
                        child: Text(
                            ' ${perguntas[perguntaAtual].alternativas[index]}'),
                        onPressed: () {
                          responder(index);
                        },
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            )
          ])),
    );
  }
}
