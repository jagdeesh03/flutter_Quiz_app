import 'package:quiz/components/QuestionFormat.dart';

class QuizBrain {
  int questionnumber = 0;
  List<QuestionFormats> questionBank = [
    QuestionFormats('1. What is flutter ?', 'flutter is open source toolkit',
        'flutter is open source backend toolkit'),
    QuestionFormats('2. Flutter is developed by ', 'Facebook', 'Google'),
    QuestionFormats('3. Is flutter on programming language ?', 'yes', 'No'),
    QuestionFormats(
        '4. Flutter is mainly optimzed ______ that can run on both android and ios platforms ',
        ' 2D Mobile apps ',
        'Desktop Only'),
    QuestionFormats('5. SDK stands for ', 'Software Development Knowledge',
        'Software Development Kit'),
    QuestionFormats('6. What is dart ?', 'Dart is functional Pragramming',
        ' Dart is Object-Oriented Programming Language.'),
    QuestionFormats(
        '7. The Dart language can be compiled ______.', 'AOT and JIT', 'None'),
    QuestionFormats(
        '8. Without the main function , we cannot write any program on flutter. ',
        'True',
        'False'),
    QuestionFormats('9. A __________ is a sequence of asynchronous events. ',
        'Current', 'Stream'),
    QuestionFormats(
        '10. How many types of widgets are there in flutter ', '2', '3'),
    QuestionFormats(' ', ' ', ' '),
  ];

  String getQuestion() {
    return questionBank[questionnumber].QuestionText;
  }

  String getChoice1() {
    return questionBank[questionnumber].choice1;
  }

  String getChoice2() {
    return questionBank[questionnumber].choice2;
  }

  void questionNumber() {
    if (questionnumber < questionBank.length - 1) {
      questionnumber++;
    }
  }

  void reset() {
    questionnumber = 0;
  }

  bool finished() {
    return questionnumber >= questionBank.length - 1;
  }
}
