import 'package:flutter/material.dart';
import 'package:quiz/screens/Question.dart';
import 'package:quiz/screens/Result.dart';
import 'screens/startquiz.dart';

void main() {
  runApp(Model());
}

class Model extends StatelessWidget {
  const Model({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Color(0xff43a5d6),
        ),
        scaffoldBackgroundColor: Color(0xff79cff5),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => StartQuiz(),
        '/questionpage': (context) => Questions(),
      },
    );
  }
}
