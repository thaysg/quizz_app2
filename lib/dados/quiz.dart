var score = 0;
var questionNumber = 0;
var quiz = Quiz();

class Quiz {
  List<String> questions = [
    'Como o time de heróis, Vingadores, é conhecido:',
    'Thanos fez sua primeira aparição em qual filme da Marvel?',
    'Qual frase abaixo é dita por Ultron?',
    'O termo: "Eu Entendi a Referência", é dito por qual personagem e em qual filme?',
    'A frase: "Gênio, Bilionário, Playboy e Filantropo", é dita por qual personagem e em qual filme?'
  ];

  var choices = [
    [
      'Maiores Heróis',
      'Heróis Unidos',
      'Os Super-Heróis mais Poderosos da Terra',
      'Herois da Terra'
    ],
    [
      'Primeiro pós créditos Os Vingadores',
      'Pós crédito Vingadores Era de Ultron',
      'Guardiões da Galáxia 1',
      'Segundo pós crédito Os Vingadores'
    ],
    [
      'Sinto-me estranho. Sinto-me errado',
      'Nada dura para sempre',
      'Pessoas pacíficas criaram máquinas de guerra',
      'Humanos são estranhos.'
    ],
    [
      'Clint - Vingadores: Era de Ultron',
      'Steve Rogers - Os Vingadores',
      'Tony Stark - Guerra Infinita',
      'Thor - Os Vingadores'
    ],
    [
      'Viúva Negra - Os Vingadores',
      'Capitão América - Os Vingadores',
      'Tony Stark - Os Vingadores',
      'Tony Stark - Vingadores: Era de Ultron'
    ],
  ];

  var correctAnswer = [
    'Os Super-Heróis mais Poderosos da Terra',
    'Primeiro pós créditos Os Vingadores',
    'Pessoas pacíficas criaram máquinas de guerra',
    'Steve Rogers - Os Vingadores',
    'Tony Stark - Os Vingadores'
  ];
}
