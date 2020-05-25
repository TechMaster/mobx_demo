import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'rgb_mixer_model.dart';
import 'dart:math' as math;

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RGBMixerModel>.reactive(
      builder: (context, model, child) => AppBar(
        //Đổi màu nền AppBar theo trạng thái của 3 slider Red, Green, Blue
        backgroundColor: Color.fromARGB(
          255,
          model.red.floor(),
          model.green.floor(),
          model.blue.floor(),
        ),
        title: Text('Color Mixer - ${(model.angle * 180 / math.pi).floor()}'),
      ),
      viewModelBuilder: () => RGBMixerModel(),
    );
  }
}
