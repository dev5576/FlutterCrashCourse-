import 'package:flutter/material.dart';

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
      'question 1',
      'question 2',
    ];
    print('build()  called!');
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Column(
        children: <Widget>[
          Text(questions[_questionIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: _AnswerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: _AnswerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: _AnswerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: () {
              print('answer chosen 3!');
            },
          ),
        ],
      ),
    ));
  }
}
