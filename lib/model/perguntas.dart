class Pergunta {
  String enunciado;
  List<String> alternativas;
  int resposta;

  Pergunta(this.enunciado, this.alternativas, this.resposta);

  bool responder(int escolhido) => escolhido == resposta;
}

class PerguntasProvider {
  static List<Pergunta> getPortugues() {
    return List.from([
      Pergunta('"Por obséquio" significa:',
          List.from(['Observe bem', 'Por favor', 'O ar está seco']), 1),
      Pergunta(
          'O que é um hiato?',
          List.from([
            'Duas consoantes iguais na mesma palavra',
            'Palavra sem vogais',
            'Duas vogais contíguas que pertencem a sílabas diferentes'
          ]),
          2),
      Pergunta(
          'Se a sua mãe fala "Filho, jogue videogame com parcimônia", ela está dizendo?',
          List.from([
            'Que você precisa jogar videogame com atenção',
            'Que não é para jogar em excesso',
            'Que é para jogar a vontade'
          ]),
          1)
    ]);
  }

  static List<Pergunta> getMatematica() {
    return List.from([
      Pergunta('É um paralelogramo que possui os quatro lados sempre iguais:',
          List.from(['Losango', 'Retângulo', 'Trapézio']), 0),
      Pergunta('Na fração, o número que fica em baixo é chamado de:',
          List.from(['Numerador', 'Fracionário', 'Denominador']), 2),
      Pergunta(
          'O que significa um quinquênio?',
          List.from([
            'Conjunto de 5 elementos',
            'Equação com 5 termos',
            'Período de 5 anos'
          ]),
          2),
    ]);
  }

  static List<Pergunta> getHistoria() {
    return List.from([
      Pergunta(
          'Quando a família real portuguesa veio para o Brasil, em que cidade se estabeleceu?',
          List.from(['São Paulo', 'Salvador', 'Rio de Janeiro']),
          2),
      Pergunta('Em que ano o homem pisou na Lua?',
          List.from(['1969', '1979', '1989']), 0),
      Pergunta(
          'Quem proclamou a República no Brasil?',
          List.from(['Marechal Deodoro', 'Dom Pedro 1º', 'Floriano Peixoto']),
          0)
    ]);
  }

  static List<Pergunta> getGeografia() {
    return List.from([
      Pergunta('Qual o estado brasileiro com a maior população?',
          List.from(['Bahia', 'São Paulo', 'Rio de Janeiro']), 1),
      Pergunta('Qual a maior reserva indígena brasileira?',
          List.from(['Caiapós', 'Ianomâmis', 'Xingu']), 2),
      Pergunta(
          'Qual a maior hidrelétrica do Brasil?',
          List.from([
            'Hidrelétrica de Itaipu',
            'Hidrelétrica Paulo Afonso',
            'Hidrelétrica do Tucuruí'
          ]),
          0)
    ]);
  }
}
