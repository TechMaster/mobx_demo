import 'package:flutter/material.dart';
import 'counter_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobx Counter',
      home: CounterPage(),
    );
  }
}
