import 'package:flutter/widgets.dart';

class QuestionProvider extends ChangeNotifier {
  int _questionCardIndex = 0;
  int get questionCardIndex => _questionCardIndex;

  set questionCardIndex(int questionCardIndex) {
    _questionCardIndex = questionCardIndex;
    notifyListeners();
  }
}
