import 'package:mobx/mobx.dart';
part 'event.g.dart';

class Event = _Event with _$Event;

abstract class _Event with Store {
  @observable
  double red = 0.0;

  @observable
  double green = 0.0;

  @observable
  double blue = 0.0;

  @observable
  double angle = 0.0;

  @action
  changeRed(double newRed) {
    red = newRed;
  }

  @action
  changeGreen(double newGreen) {
    green = newGreen;
  }

  @action
  changeBlue(double newBlue) {
    blue = newBlue;
  }

  @action
  changeAngle(double newAngle) {
    angle = newAngle;
  }
}
