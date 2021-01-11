import 'dart:io';

import 'number_generator.dart';
import 'observer.dart';

class GraphObserver extends Observer {
  void update(NumberGenerator generator) {
    print("GraphObserver:");
    int count = generator.getNumber();
    for (int i = 0; i < count; i++) {
      stdout.write("*");
    }
    print("");
    try {
      sleep(Duration(milliseconds: 100));
    } catch (e) {
      print(e);
    }
  }
}
