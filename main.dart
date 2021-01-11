import 'digit_observer.dart';
import 'graph_observer.dart';
import 'number_generator.dart';
import 'observer.dart';
import 'random_number_generator.dart';

main(List<String> args) {
  print("hello");
  NumberGenerator generator = RandomNumberGenerator();
  Observer observer1 = DigitObserver();
  Observer observer2 = GraphObserver();
  generator.addObserver(observer1);
  generator.addObserver(observer2);
  // 乱数の生成を実行し、オブザーバに通知を送る
  generator.execute();
}
