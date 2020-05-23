import 'package:flutter/material.dart';
import 'dart:math' as math;

class RGBMixer extends StatefulWidget {
  RGBMixer({Key key}) : super(key: key);

  @override
  _RGBMixerState createState() => _RGBMixerState();
}

class _RGBMixerState extends State<RGBMixer> {
  double red = 0.0;
  double green = 0.0;
  double blue = 0.0;
  double rotateAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Slider(
          value: red,
          onChanged: (newRed) {
            setState(() {
              red = newRed;
            });
          },
          min: 0.0,
          max: 255.0,
          divisions: 256,
          activeColor: Colors.red,
        ),
        SizedBox(height: 30),
        Slider(
          value: blue,
          onChanged: (newBlue) {
            setState(() {
              blue = newBlue;
            });
          },
          min: 0.0,
          max: 255.0,
          divisions: 256,
          activeColor: Colors.blue,
        ),
        SizedBox(height: 30),
        Slider(
          value: green,
          onChanged: (newGreen) {
            setState(() {
              green = newGreen;
            });
          },
          min: 0.0,
          max: 255.0,
          divisions: 256,
          activeColor: Colors.green,
        ),
        SizedBox(height: 30),
        Slider(
          value: rotateAngle,
          onChanged: (newrotateAngle) {
            setState(() {
              rotateAngle = newrotateAngle;
            });
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
              angle: rotateAngle,
              child: Container(
                width: 200,
                height: 200,
                color: Color.fromARGB(
                    255, red.floor(), green.floor(), blue.floor()),
              ),
            ),
            Text(
                "R:${red.floor()}, G:${green.floor()}, B:${blue.floor()}, angle:${(rotateAngle * 180 / math.pi).floor()}")
          ],
        )
      ]),
    );
  }
}
