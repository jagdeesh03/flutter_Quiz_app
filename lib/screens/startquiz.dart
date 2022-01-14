import 'package:flutter/material.dart';
import 'package:quiz/components/Constant.dart';
import 'package:quiz/screens/Question.dart';

class StartQuiz extends StatefulWidget {
  const StartQuiz({Key? key}) : super(key: key);

  @override
  _StartQuizState createState() => _StartQuizState();
}

class _StartQuizState extends State<StartQuiz> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('FLUTTER QUIZ', style: appbar),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text('Test your skills!\n ', style: appbar),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    Image(image: AssetImage("assets/CxrL.gif")),
                    SizedBox(
                      height: 15.0,
                    ),
                    Center(
                      child: Text(
                          'Are you ready for the Flutter Quiz? \n                 If yes click start  👇 ',
                          style: textStyle),
                    ),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  style: elevatedstyle,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Questions();
                    }));
                  },
                  child: Center(
                    child: Text(
                      " START ",
                      style: appbar,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
