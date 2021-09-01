import 'package:flutter/material.dart';

class Perguntas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    void _onPressed(String value) {

    }
    final List<String> alternativas = <String>['Cabeça', 'Pulmão', 'Pele', 'Estômago'];
    final title = 'Perguntas (1/10)';
    final ButtonStyle style = ElevatedButton.styleFrom(primary: Color(0xFF00A789), onSurface: Colors.green, textStyle: const TextStyle(fontSize: 25));
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
                child: Text(" Qual é o maior órgão do corpo humano? ",style: const TextStyle(fontSize: 25),),
              ),
              Expanded(
                child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: alternativas.length,
                itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  color: Color(0xFF00A789),
                  child: Center(child: ElevatedButton( child: Text(' ${alternativas[index]}'), style: style, onPressed: () => _onPressed(' ${alternativas[index]}'),),),

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

