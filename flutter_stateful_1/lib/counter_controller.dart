
import 'package:flutter/cupertino.dart';

class CounterController with ChangeNotifier{
  int _count=0;
  int get count=>_count;

  void changeTo(int newCount) {
    _count=newCount;
    notifyListeners();//상태변경후 무조건호출

  }
}