var score = 0;
var questionNumber = 0;
var quiz = Quiz();

class Quiz {
  List<String> questions = [
    'Qual a capital da Inglaterra?',
    'Qual a capital do Canadá?',
    'Qual a capital de Israel?',
    'Qual a capital da Austrália?'
        'Qual a capital da Alemanha?'
  ];

  var choices = [
    ['Dublin', 'Edimburg', 'London', 'Wales'],
    ['Ontário', 'Otawa', 'London', 'Washington'],
    ['Jerusalém', 'Tel Aviv', 'Bagdá', 'Palestina'],
    ['Sidney', 'Camberra', 'Santa Mônica', 'Paris'],
    ['Berlin', 'Johanburg', 'Munique', 'Roma'],
  ];

  var correctAnswer = ['Londo', 'Otawa', 'Tel Aviv', 'Camberra', 'Berlin'];
}
