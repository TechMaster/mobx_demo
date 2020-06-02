import 'package:mobx/mobx.dart';
import 'dart:async';
part 'count_down.g.dart';

class CountDown = _CountDown with _$CountDown;
enum State { reset, ready, running, paused, alarm }
enum Event { dial, start, reset, pause, reach_zero }

abstract class _CountDown with Store {
  Timer _timer;
  static const one_second = const Duration(seconds: 1);

  @observable
  State state = State.reset;

  @observable
  int duration = 0;
  int ellapsed = 0;

  @action //Sự kiện người dùng dial slider để đặt thời gian duration
  setDuration(int newDuration) {
    duration = newDuration;
    handleEvent(Event.dial);
  }

  @action
  onStart() {
    //Sự kiện người dùng tap nút Start
    handleEvent(Event.start);
  }

  @action
  onReset() {
    //Sự kiện người dùng tap nút Reset
    handleEvent(Event.reset);
  }

  @action
  onPause() {
    //Sự kiện người dùng tap nút Pause
    handleEvent(Event.pause);
  }

  void tickCallBack(timer) {
    if (ellapsed > 0) {
      ellapsed--;
    } else {
      timer.cancel();
      handleEvent(Event.reach_zero);
    }
  }

  void handleEvent(Event event) {
    switch (state) {
      case State.reset:
        if (event == Event.dial) {
          state = State.ready;
          ellapsed = duration;
        }
        break;
      case State.ready:
        if (event == Event.start) {
          state = State.running;
          _timer = Timer.periodic(one_second, tickCallBack);
        } else if (event == Event.dial) {
          //Still in ready state
        }
        break;
      case State.running:
        if (event == Event.pause) {
          _timer.cancel();
          state = State.paused;
        } else if (event == Event.reset) {
          _timer.cancel();
          state = State.reset;
          duration = 0;
        } else if (event == Event.reach_zero) {
          //Elasped tiến đến 0
          state = State.alarm;
        }
        break;
      case State.paused:
        if (event == Event.start) {
          state = State.running;
          _timer = Timer.periodic(one_second, tickCallBack);
        } else if (event == Event.reset) {
          _timer.cancel();
          state = State.reset;
          duration = 0;
        }
        break;
      case State.alarm:
        if (event == Event.reset) {
          state = State.reset;
          duration = 0;
        }
        break;
    }
  }
}
