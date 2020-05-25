import 'package:mobx/mobx.dart';

void main() {
  final counter = Observable(0);

  final increment = Action(() {
    counter.value++;
  });

  final muliply_by_2 = Action(() {
    counter.value *= 2;
  });

  var dispose = autorun((_) {
    print('x = ${counter.value}');
  });

  increment();
  increment();
  muliply_by_2();
  dispose();
  increment();
}
