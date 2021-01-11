import 'number_generator.dart';

abstract class Observer {
  // ジェネレータから変更通知を受けるためのメソッド
  void update(NumberGenerator generator) {}
}
