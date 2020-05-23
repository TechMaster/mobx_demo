import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_mobx/flutter_mobx.dart';
import 'events/event.dart';

class MobXMixer extends StatelessWidget {
  final Event event;
  MobXMixer(this.event);  //Truyền đối tượng quản lý trạng thái MobX vào đây
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Container(
        child: Column(children: <Widget>[
          Slider(
            value: event.red,
            onChanged: (newRed) {
              event.changeRed(newRed);
            },
            min: 0.0,
            max: 255.0,
            divisions: 256,
            activeColor: Colors.red,
          ),
          SizedBox(height: 30),
          Slider(
            value: event.blue,
            onChanged: (newBlue) {
              event.changeBlue(newBlue);
            },
            min: 0.0,
            max: 255.0,
            divisions: 256,
            activeColor: Colors.blue,
          ),
          SizedBox(height: 30),
          Slider(
            value: event.green,
            onChanged: (newGreen) {
              event.changeGreen(newGreen);
            },
            min: 0.0,
            max: 255.0,
            divisions: 256,
            activeColor: Colors.green,
          ),
          SizedBox(height: 30),
          Slider(
            value: event.angle,
            onChanged: (newAngle) {
              event.changeAngle(newAngle);
            },
            min: 0.0,
            max: math.pi * 2.0,
            divisions: 360,
            activeColor: Colors.black,
          ),
          SizedBox(height: 50),
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Transform.rotate(
                  angle: event.angle,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Color.fromARGB(
                      255,
                      event.red.floor(),
                      event.green.floor(),
                      event.blue.floor(),
                    ),
                  )),
              Text(
                  "R:${event.red.floor()}, G:${event.green.floor()}, B:${event.blue.floor()}, angle:${(event.angle * 180 / math.pi).floor()}")
            ],
          )
        ]),
      ),
    );
  }
}
