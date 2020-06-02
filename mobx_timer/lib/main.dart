import 'package:flutter/material.dart';
import 'circular_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Count Down Timer Demo',
      home: Scaffold(body: CountDownSlider()),
    );
  }
}
