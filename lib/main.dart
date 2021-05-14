import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

/* _ syntax ..converts public class to private class
can only be used MyApp class...class located on other files cannot use it*/
class _MyAppState extends State<MyApp> {
  //_ syntax private property
  var _questionIndex = 0;
  final _questions = const [
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
      _questionIndex = (_questionIndex + 1);
    });

    print('AnswerQuestion()  called!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _AnswerQuestion,
              questionIndex: _questionIndex,
              questions: _questions)
          : Result(),
    ));
  }
}
