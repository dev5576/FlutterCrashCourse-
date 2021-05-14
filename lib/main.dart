import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

/* _ sysntax ..converts public class to private class
can only be used MyApp class...class located on other files cannot use it*/
class _MyAppState extends State<MyApp> {
  //_ syntax private property
  var _questionIndex = 0;
  final questions = const [
    {
      'questionText': 'what is your favourite color?',
      'answers': ['red', 'green', 'yellow']
    },
    {
      'questionText': 'what is your favourite animal?',
      'answers': ['deer', 'lion', 'snake']
    },
    {
      'questionText': 'what is your favourite car?',
      'answers': ['bmw', 'ferrari', 'honda']
    },
  ];

  void _AnswerQuestion() {
    setState(() {
      print('setState()  called!');
      //_questionIndex = (_questionIndex + 1) % 2;
      _questionIndex = (_questionIndex + 1);
    });

    print('AnswerQuestion()  called!');
  }

  @override
  Widget build(BuildContext context) {
    print('build()  called!');
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: _questionIndex < questions.length
          ? Column(
              children: <Widget>[
                Question(questions[_questionIndex]['questionText']),
                ...(questions[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_AnswerQuestion, answer);
                }).toList()
              ],
            )
          : Center(
              child: Text('You did it'),
            ),
    ));
  }
}
