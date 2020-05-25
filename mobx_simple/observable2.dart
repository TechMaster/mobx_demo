import 'package:mobx/mobx.dart';

class Counter {
  var _value;
  Action increment;

  Counter(int initial_value) {
    _value = Observable(initial_value);
    increment = Action(_increment);
  }

  int get value => _value.value;

  void _increment() {
    _value.value++;
  }
}

void main() {
  final counter = Counter(10);

  var dispose = autorun((_) {
    print(counter.value);
  });

  counter.increment();
  counter.increment();

  dispose();
  counter.increment();
}
