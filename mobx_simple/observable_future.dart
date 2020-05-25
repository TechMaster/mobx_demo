import 'package:mobx/mobx.dart';

Future<String> fetchUserOrder() {
  // Imagine that this function is more complex and slow
  return Future.delayed(Duration(seconds: 2), () => 'Large Latte');
}

void main() {
  final fetch_order = ObservableFuture(fetchUserOrder());
  fetch_order.whenComplete(() => print(fetch_order.result));
  print("Fetching user order....");
  autorun((_) {});
}
