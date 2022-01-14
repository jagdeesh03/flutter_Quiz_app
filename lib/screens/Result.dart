import 'package:flutter/material.dart';
import 'package:quiz/components/Calculation.dart';
import 'package:quiz/components/Constant.dart';
import 'package:quiz/components/Reusable.dart';

const activecolor = Color(0xff82c3e3);

class Results extends StatelessWidget {
  Results({required this.count, required this.approach});
  final String count;
  final String approach;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'FLUTTER QUIZ ',
          style: appbar,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Your Result",
                style: TextStyle(color: Colors.black26, fontSize: 20.0),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Resuse(
                colour: activecolor,
                wildcard: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: Center(
                      child: Container(
                        child: Text(
                          approach,
                          style: approachText,
                        ),
                      ),
                    )),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 100.0),
                        child: Text(
                          '$count/10',
                          style: resultText,
                        ),
                      ),
                    )
                  ],
                )),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                style: elevatedstyle,
                onPressed: () {
                  Navigator.popUntil(context, ModalRoute.withName('/home'));
                },
                child: Center(
                  child: Text(
                    " RETEST! ",
                    style: appbar,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// 