import 'package:flutter/material.dart';
import 'package:quiz/components/Constant.dart';
import 'package:quiz/screens/Result.dart';
import 'package:quiz/components/quiz_Brain.dart';
import '../components/Calculation.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  QuizBrain getter = QuizBrain();
  List<Icon> scorekeeper = [];
  int counted = 0;
  void correctAnswer(String choice) {
    if (getter.finished() == false) {
      scorekeeper.add(Icon(
        Icons.check,
        color: Colors.green,
        size: 20.0,
      ));
    }
    if (choice.contains('flutter is open source toolkit') ||
        choice.contains('Google') ||
        choice.contains('No') ||
        choice.contains('2D Mobile apps') ||
        choice.contains('Software Development Kit') ||
        choice.contains('Dart is Object-Oriented Programming Language.') ||
        choice.contains('AOT and JIT') ||
        choice.contains('True') ||
        choice.contains('Stream') ||
        choice.contains('2')) {
      counted++;
    }
  }

  void alertdialog(bool end) {
    if (end == true) {
      scorekeeper.add(Icon(
        Icons.check,
        color: Colors.green,
        size: 20.0,
      ));
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Finished!'),
          content: Image(
            image: AssetImage('assets/tick.gif'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Calculated calc = Calculated(count: counted);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Results(
                      count: calc.getResult(), approach: calc.getApproach());
                }));
              },
              child: const Text('SHOW RESULT'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Flutter Questions',
          style: textStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                  child: Text(getter.getQuestion(), style: questiontext)),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: ElevatedButton(
                style: elevatedstyle,
                onPressed: () {
                  setState(() {
                    getter.questionNumber();
                    correctAnswer(getter.getChoice1());
                    alertdialog(getter.finished());
                  });
                },
                child: Text(getter.getChoice1(), style: optionstyle),
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: ElevatedButton(
                  style: elevatedstyle,
                  onPressed: () {
                    setState(() {
                      getter.questionNumber();
                      correctAnswer(getter.getChoice2());
                      alertdialog(getter.finished());
                    });
                  },
                  child: Text(getter.getChoice2(), style: optionstyle),
                ),
              )),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: scorekeeper,
          ),
        ],
      ),
    );
  }
}
