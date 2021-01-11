import 'dart:math';

import 'number_generator.dart';

class RandomNumberGenerator extends NumberGenerator {
  int number;
  int getNumber() {
    return number;
  }

// 乱数を20個生成し、その都度notifyBoserversで観察者に通知する
  void execute() {
    for (int i = 0; i < 20; i++) {
      // ランダムな整数を取得
      number = Random().nextInt(50);
      notifyObservers();
    }
  }
}
