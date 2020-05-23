import 'package:flutter/material.dart';
import 'rgb_mobx.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'events/event.dart';
import 'dart:math' as math;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Event event = Event();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: PreferredSize( //Phải cho Observer vào trong PreferredSize vì appBar cần kiểu PreferredSizeWidget
          preferredSize: const Size.fromHeight(60),
          child: Observer(
            builder: (_) => AppBar(  //Đổi màu nền AppBar theo trạng thái của 3 slider Red, Green, Blue
              backgroundColor: Color.fromARGB(
                255,
                event.red.floor(),
                event.green.floor(),
                event.blue.floor(),
              ),
              title: Text(
                  'Color Mixer - ${(event.angle * 180 / math.pi).floor()}'),
            ),
          ),
        ),
        body: Center(
          child: MobXMixer(event),
        ),
      ),
    );
  }
}
