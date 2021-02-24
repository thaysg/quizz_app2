import 'package:flutter/material.dart';
import 'package:quizz_app/dados/quiz.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //update quiz next question
  void updateQuiz() {
    setState(() {
      if (questionNumber == quiz.questions.length - 1) {
        _showEndDialog();
      } else {
        questionNumber++;
      }
    });
  }

  //AlertDialog
  void _showEndDialog() {
    showDialog(
        barrierDismissible: false, // Para nao clicar fora para sair do jogo
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Your Score: $score",
              textAlign: TextAlign.center,
            ),
            actions: <Widget>[
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    resetGame();
                  },
                  icon: Icon(Icons.refresh),
                  label: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Jogar Novamente",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }

  //reset game
  void resetGame() {
    setState(() {
      Navigator.pop(context);
      score = 0;
      questionNumber = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0a0e21),
        elevation: 0,
        title: Text(
          'Quizz App',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                "Score: $score",
                style: new TextStyle(
                  fontSize: 22.0,
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    quiz.questions[questionNumber],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      height: 1.5,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          if (quiz.choices[questionNumber][0] ==
                              quiz.correctAnswer[questionNumber]) {
                            debugPrint("Correct");
                            score++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuiz();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text(
                          quiz.choices[questionNumber][0],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          if (quiz.choices[questionNumber][1] ==
                              quiz.correctAnswer[questionNumber]) {
                            debugPrint("Correct");
                            score++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuiz();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text(
                          quiz.choices[questionNumber][1],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          if (quiz.choices[questionNumber][2] ==
                              quiz.correctAnswer[questionNumber]) {
                            debugPrint("Correct");
                            score++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuiz();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text(
                          quiz.choices[questionNumber][2],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          if (quiz.choices[questionNumber][3] ==
                              quiz.correctAnswer[questionNumber]) {
                            debugPrint("Correct");
                            score++;
                          } else {
                            debugPrint("Wrong");
                          }
                          updateQuiz();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.indigo,
                        ),
                        child: Text(
                          quiz.choices[questionNumber][3],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
