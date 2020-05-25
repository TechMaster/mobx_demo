import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'rgb_mixer_model.dart';
import 'dart:math' as math;

class RGBMixerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RGBMixerModel>.reactive(
      builder: (context, model, child) => Container(
        child: Column(children: <Widget>[
          Slider(
            value: model.red,
            onChanged: (newRed) {
              model.red = newRed;
            },
            min: 0.0,
            max: 255.0,
            divisions: 256,
            activeColor: Colors.red,
          ),
          SizedBox(height: 30),
          Slider(
            value: model.blue,
            onChanged: (newBlue) {
              model.blue = newBlue;
            },
            min: 0.0,
            max: 255.0,
            divisions: 256,
            activeColor: Colors.blue,
          ),
          SizedBox(height: 30),
          Slider(
            value: model.green,
            onChanged: (newGreen) {
              model.green = newGreen;
            },
            min: 0.0,
            max: 255.0,
            divisions: 256,
            activeColor: Colors.green,
          ),
          SizedBox(height: 30),
          Slider(
            value: model.angle,
            onChanged: (newAngle) {
              model.angle = newAngle;
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
                  angle: model.angle,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Color.fromARGB(
                      255,
                      model.red.floor(),
                      model.green.floor(),
                      model.blue.floor(),
                    ),
                  )),
              Text(
                  "R:${model.red.floor()}, G:${model.green.floor()}, B:${model.blue.floor()}, angle:${(model.angle * 180 / math.pi).floor()}")
            ],
          )
        ]),
      ),
      viewModelBuilder: () => RGBMixerModel(),
    );
  }
}
