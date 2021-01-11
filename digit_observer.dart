import 'dart:io';

import 'number_generator.dart';
import 'observer.dart';

// 観察した数を数字で表示するオブザーバ
class DigitObserver extends Observer {
  void update(NumberGenerator generator) {
    print("DigitObserver: ${generator.getNumber()}");
    try {
      sleep(Duration(milliseconds: 100));
    } catch (e) {
      print(e);
    }
  }
}
