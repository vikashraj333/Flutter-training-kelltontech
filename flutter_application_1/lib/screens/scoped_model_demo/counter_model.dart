import 'package:flutter_application_1/screens/scoped_model_demo/my_counter.dart';
import 'package:scoped_model/scoped_model.dart';

class CounterModel extends Model {
  MyCounter myCounter = MyCounter(0);
  int get counter => myCounter.counter;
  void add() {
    myCounter.increaseCount();
    notifyListeners();
  }
}
