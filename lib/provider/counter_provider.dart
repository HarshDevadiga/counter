import 'package:flutter/cupertino.dart';

class CounterProvider with ChangeNotifier {
  int inc = 0;
  int get count => inc;

  increment() {
    inc++;
    notifyListeners();
  }

  decrement() {
    if (inc == 0) {
      inc = 0;
    } else {
      inc--;
    }

    notifyListeners();
  }
}
