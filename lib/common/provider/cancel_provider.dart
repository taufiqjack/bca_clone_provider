import 'package:flutter/cupertino.dart';

class CancelProvider extends ChangeNotifier {
  bool cancelBtn = false;

  void trueState() {
    cancelBtn = true;
    notifyListeners();
  }

  void falseState() {
    cancelBtn = false;
    notifyListeners();
  }
}
