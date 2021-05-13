import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void AnswerQuestion() {
    setState(() {
      print('setState()  called!');
      questionIndex = (questionIndex + 1) % 2;
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
          Text(questions[questionIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: AnswerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: AnswerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: AnswerQuestion,
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
