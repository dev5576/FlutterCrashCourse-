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

  void _AnswerQuestion() {
    setState(() {
      print('setState()  called!');
      _questionIndex = (_questionIndex + 1) % 2;
    });

    print('AnswerQuestion()  called!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what is your favourite color?',
        'answers': ['red', 'green', 'yello']
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
    print('build()  called!');
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Column(
        children: <Widget>[
          Question(questions[_questionIndex]['questionText']),
          Answer(_AnswerQuestion),
          Answer(_AnswerQuestion),
          Answer(_AnswerQuestion),
          Answer(_AnswerQuestion),
        ],
      ),
    ));
  }
}
