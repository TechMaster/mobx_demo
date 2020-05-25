import 'package:mobx/mobx.dart';

void main() {
  final list = ObservableList<int>.of([1]);

  autorun((_) {
    print(list);
  }); // prints 1

  list[0] = 100; // autorun prints 100
  list.add(105);
  list[1] = 106;
  list.add(127);
  list.removeAt(1);
}
