// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_down.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CountDown on _CountDown, Store {
  final _$stateAtom = Atom(name: '_CountDown.state');

  @override
  State get state {
    _$stateAtom.reportRead();
    return super.state;
  }

  @override
  set state(State value) {
    _$stateAtom.reportWrite(value, super.state, () {
      super.state = value;
    });
  }

  final _$durationAtom = Atom(name: '_CountDown.duration');

  @override
  int get duration {
    _$durationAtom.reportRead();
    return super.duration;
  }

  @override
  set duration(int value) {
    _$durationAtom.reportWrite(value, super.duration, () {
      super.duration = value;
    });
  }

  final _$_CountDownActionController = ActionController(name: '_CountDown');

  @override
  dynamic setDuration(int newDuration) {
    final _$actionInfo = _$_CountDownActionController.startAction(
        name: '_CountDown.setDuration');
    try {
      return super.setDuration(newDuration);
    } finally {
      _$_CountDownActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onStart() {
    final _$actionInfo =
        _$_CountDownActionController.startAction(name: '_CountDown.onStart');
    try {
      return super.onStart();
    } finally {
      _$_CountDownActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onReset() {
    final _$actionInfo =
        _$_CountDownActionController.startAction(name: '_CountDown.onReset');
    try {
      return super.onReset();
    } finally {
      _$_CountDownActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic onPause() {
    final _$actionInfo =
        _$_CountDownActionController.startAction(name: '_CountDown.onPause');
    try {
      return super.onPause();
    } finally {
      _$_CountDownActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
state: ${state},
duration: ${duration}
    ''';
  }
}
