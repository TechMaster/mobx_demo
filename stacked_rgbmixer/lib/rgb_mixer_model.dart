import 'package:stacked/stacked.dart';

class RGBMixerModel extends BaseViewModel {
  //Declare private properties
  double _red = 0.0;
  double _green = 0.0;
  double _blue = 0.0;
  double _angle = 0.0;

  double get red => _red;
  double get green => _green;
  double get blue => _blue;
  double get angle => _angle;

  set red(double newRed) {
    _red = newRed;
    notifyListeners();
  }

  set green(double newGreen) {
    _green = newGreen;
    notifyListeners();
  }

  set blue(double newBlue) {
    _blue = newBlue;
    notifyListeners();
  }

  set angle(double newAngle) {
    _angle = newAngle;
    notifyListeners();
  }
}
