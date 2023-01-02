// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import 'questions.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() {
  randomQuesNumbersGenerator();
  runApp(Quizzler());
}

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

List<Icon> scoreKeeper = [Icon(null)];

List<int> randomQuesNumbers = [];
int i = 0;
bool isnullIcon = true;

void randomQuesNumbersGenerator() {
  randomQuesNumbers.clear();
  while (randomQuesNumbers.length < 5) {
    int x = Random().nextInt(10);
    if (randomQuesNumbers.contains(x) == false) {
      randomQuesNumbers.add(x);
    }
  }
}

int correct = 0, incorrect = 0;

QuestionsList obj = QuestionsList();
List<Questions> questions = obj.questions;

class _QuizPageState extends State<QuizPage> {
  Icon ansCheck(int i, int inputByUser) {
    if (questions[i].Answer == inputByUser) {
      correct++;
      return const Icon(
        Icons.check,
        color: Colors.green,
      );
    } else {
      incorrect++;
      return const Icon(
        Icons.close,
        color: Colors.red,
      );
    }
  }

  Expanded optionButton(int opt) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextButton(
          // textColor: Colors.white,
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(Colors.blue),
          ),
          child: Text(
            questions[randomQuesNumbers[i]].Options[opt],
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          onPressed: () {
            setState(() {
              if (isnullIcon) {
                scoreKeeper.clear();
                isnullIcon = false;
              }
              scoreKeeper.add(ansCheck(randomQuesNumbers[i], opt));
              if (i < randomQuesNumbers.length - 1) {
                i++;
              } else {
                Alert(
                  context: context,
                  type: AlertType.success,
                  title: "Quiz Completed Successfully",
                  desc: "Correct: $correct\n"
                      "Incorrect: $incorrect",
                  buttons: [
                    DialogButton(
                      onPressed: () => setState(() {
                        i = 0;
                        correct = 0;
                        incorrect = 0;
                        scoreKeeper.clear();
                        scoreKeeper.add(Icon(null));
                        randomQuesNumbersGenerator();
                        Navigator.pop(context);
                      }),
                      width: 120,
                      child: Text(
                        "Restart",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ).show();
              }
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[randomQuesNumbers[i]].Question,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        optionButton(0),
        optionButton(1),
        optionButton(2),
        optionButton(3),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
