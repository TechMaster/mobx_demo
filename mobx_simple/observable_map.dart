import 'package:mobx/mobx.dart';

void main() {
  final rgbmap =
      ObservableMap<String, int>.of({'red': 100, 'green': 50, 'blue': 20});

  autorun((_) {
    print(rgbmap);
  }); // prints 1

  rgbmap['red'] = 101;
  rgbmap['green'] = 99;
  rgbmap['blue'] = 15;
  rgbmap['angle'] = 40;
}
