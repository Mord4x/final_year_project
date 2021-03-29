import 'Quiz1q&a.dart';

class Quiz1Main {
  int _questionNumber = 0;
  List<Question> _questions = [
    Question('Dart is an Object oriented language.', true),
    Question(
        'Dart is developed by Google and is used to build mobile apps only.',
        false),
    Question('Dart is a dynamically typed.', false),
    Question('Dart has a dynamic variable option.', true),
    Question('Dart like typescript supports JSON files.', true),
    Question('Dart apps work on Android only.', false),
    Question('Browsers can execute Dart code directly.', false),
    Question('Dart is fun.', false),
    Question('Dart is used to make building large scale apps easier.', true),
    Question('Dart and JavaScript are the same.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questions.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
