import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  static const _questions = [
    {
      'questionText': 'What is your faviourite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What is your faviourute animal?',
      'answers': ['Rabbit', 'Snak', 'Elephant', 'Lion'],
    },
    {
      'questionText': 'Who\'s your faviourite instructor?',
      'answers': ['Shubham', 'Sham', 'Shubbu', 'Max'],
    },
  ];
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print('Answer Choosen!');
    if (_questionIndex < _questions.length) {
      print("");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                selectHanlder: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
