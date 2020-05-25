import 'package:mobx/mobx.dart';

void main() {
  final greeting = Observable('Hello World');

  final dispose = reaction((_) => greeting.value, (msg) => print(msg));

  final setNewString = Action((new_string) {
    greeting.value = new_string;
  });

  setNewString('Hello MobX');

  // Done with the reaction()
  dispose();
}
