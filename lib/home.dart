import 'package:flutter/material.dart';
import 'package:quizz_app/dados/quiz.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizz App'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
              flex: 4,
              child: Column(
                children: [
                  Text(
                    quiz.questions[questionNumber],
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RaisedButton(
                    onPressed: () {
                      if (quiz.choices[questionNumber][0] ==
                          quiz.correctAnswer[questionNumber]) {
                        debugPrint("Correct");
                        score++;
                      } else {
                        debugPrint("Wrong");
                      }
                      //updateQuestion();
                    },
                    color: Colors.indigo,
                    textColor: Colors.white,
                    child: Text('London'),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.indigo,
                    textColor: Colors.white,
                    child: Text('Dublin'),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.indigo,
                    textColor: Colors.white,
                    child: Text('Edinburg'),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.indigo,
                    textColor: Colors.white,
                    child: Text('Wales'),
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
