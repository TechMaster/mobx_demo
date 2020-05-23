import 'package:mobx/mobx.dart';
part 'counter.g.dart';

/*
The with keyword indicates the use of a "mixin". See here.

A mixin refers to the ability to add the capabilities of another class or classes to 
\your own class, without inheriting from those classes. The methods of those classes 
can now be called on your class, and the code within those classes will execute. 
Dart does not have multiple inheritance, but the use of mixins allows you to fold in 
other classes to achieve code reuse while avoiding the issues that multiple inheritance 
would cause
*/

class Counter = _Counter with _$Counter;

abstract class _Counter with Store {
  @observable
  int count = 0;

  @action
  void increment() {
    count++;
  }

  @action
  void decrement() {
    count--;
  }
}
