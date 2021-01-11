import 'observer.dart';

abstract class NumberGenerator {
  // NumberGeneratorを観察するオブザーバを保存するフィールド
  List<Observer> observers = [];

  void addObserver(Observer observer) {
    observers.add(observer);
  }

  void deleteObserver(Observer observer) {
    observers.remove(observer);
  }

  // 観察しているオブザーバ全てに内容の更新を伝える
  void notifyObservers() {
    var it = observers.iterator;
    while (it.moveNext()) {
      // オブザーバーに変更を通知する
      it.current.update(this);
    }
  }

  // 数を取得する
  int getNumber();
  // 数を生成する
  void execute();
}
