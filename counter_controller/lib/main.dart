
import 'dart:async';

class CounterContoller {
  final _counterStreamController =StreamController<int>();
  
  Stream<int> get counterStream =>_counterStreamController.stream;
  
  void addCount(int newCount) {
    _counterStreamController.sink.add(newCount);
  }
}
