import 'package:flutter/material.dart';

class Perguntas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> alternativas = <String>['Cabeça', 'Pulmões', 'Pele', 'Estômago'];
    final title = 'Perguntas';
    final ButtonStyle style = ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          backgroundColor: Color(0xFF00A789),
        ),
        body: Column
          (
            children:
            [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(" Qual é o maior órgão do corpo humano? "),
              ),
              Expanded(
                child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: alternativas.length,
                itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Colors.green.withOpacity(0.5),
                  child: Center(child: ElevatedButton( child: Text(' ${alternativas[index]}'), onPressed: () {/** */},),),

                );
                },
                separatorBuilder: (BuildContext context, int index) => const Divider(),
                ),
              )
           ]
        )
      ),
    );
  }
}

