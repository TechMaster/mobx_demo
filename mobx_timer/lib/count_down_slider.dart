import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'dart:async';
import 'utils.dart';

final customWidth =
    CustomSliderWidths(trackWidth: 4, progressBarWidth: 20, shadowWidth: 40);

final customColors = CustomSliderColors(
    dotColor: HexColor('#FFB1B2'),
    trackColor: HexColor('#E9585A'),
    progressBarColors: [HexColor('#FB9967'), HexColor('#E9585A')],
    shadowColor: HexColor('#FFB1B2'),
    shadowMaxOpacity: 0.05);

final info = InfoProperties(
    topLabelStyle: TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
    topLabelText: 'Elapsed',
    bottomLabelStyle: TextStyle(
        color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
    mainLabelStyle: TextStyle(
        color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w600),
    modifier: (double value) {
      final time = printDuration(Duration(seconds: value.toInt()));
      return '$time';
    });

final CircularSliderAppearance sliderAppearance = CircularSliderAppearance(
    customWidths: customWidth,
    customColors: customColors,
    infoProperties: info,
    startAngle: 270,
    angleRange: 360,
    spinnerMode: false,
    size: 250.0);

//----------------------- Second slider
final customWidthSecondSlider =
    CustomSliderWidths(trackWidth: 1, progressBarWidth: 2);
final customColorsSecondSlider = CustomSliderColors(
    trackColor: Colors.white,
    progressBarColor: Colors.orange,
    hideShadow: true);

final CircularSliderAppearance appearanceSecondSlider =
    CircularSliderAppearance(
        customWidths: customWidthSecondSlider,
        customColors: customColorsSecondSlider,
        startAngle: 270,
        angleRange: 360,
        size: 350.0,
        animationEnabled: false);

//-----------------------

class DemoCountDown extends StatefulWidget {
  DemoCountDown({Key key}) : super(key: key);

  @override
  _DemoCountDownState createState() => _DemoCountDownState();
}

class _DemoCountDownState extends State<DemoCountDown> {
  int durationInSeconds;
  int _ellapsedCount;
  int _seconds;
  Timer timer;

  @override
  void initState() {
    durationInSeconds = 600; //600 seconds
    _ellapsedCount = durationInSeconds;
    _seconds = _ellapsedCount % 60;
    const one_second = const Duration(seconds: 1);

    timer = Timer.periodic(one_second, (_) {
      if (_ellapsedCount > 0) {
        setState(() {
          _ellapsedCount--;
          _seconds = _ellapsedCount % 60;
        });
      } else {
        timer.cancel();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Center(
            child: SleekCircularSlider(
                appearance: appearanceSecondSlider,
                min: 0,
                max: 59,
                initialValue: _seconds.toDouble(),
                innerWidget: (double value) {
                  return Align(
                      alignment: Alignment.center,
                      child: SleekCircularSlider(
                          onChangeStart: (double value) {},
                          onChangeEnd: (double value) {
                            print('value = $value');
                          },
                          appearance: sliderAppearance,
                          min: 0,
                          max: 3600,
                          initialValue: _ellapsedCount.toDouble()));
                })),
      ),
    );
  }
}
