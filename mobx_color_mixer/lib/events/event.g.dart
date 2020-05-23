// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Event on _Event, Store {
  final _$redAtom = Atom(name: '_Event.red');

  @override
  double get red {
    _$redAtom.reportRead();
    return super.red;
  }

  @override
  set red(double value) {
    _$redAtom.reportWrite(value, super.red, () {
      super.red = value;
    });
  }

  final _$greenAtom = Atom(name: '_Event.green');

  @override
  double get green {
    _$greenAtom.reportRead();
    return super.green;
  }

  @override
  set green(double value) {
    _$greenAtom.reportWrite(value, super.green, () {
      super.green = value;
    });
  }

  final _$blueAtom = Atom(name: '_Event.blue');

  @override
  double get blue {
    _$blueAtom.reportRead();
    return super.blue;
  }

  @override
  set blue(double value) {
    _$blueAtom.reportWrite(value, super.blue, () {
      super.blue = value;
    });
  }

  final _$angleAtom = Atom(name: '_Event.angle');

  @override
  double get angle {
    _$angleAtom.reportRead();
    return super.angle;
  }

  @override
  set angle(double value) {
    _$angleAtom.reportWrite(value, super.angle, () {
      super.angle = value;
    });
  }

  final _$_EventActionController = ActionController(name: '_Event');

  @override
  dynamic changeRed(double newRed) {
    final _$actionInfo =
        _$_EventActionController.startAction(name: '_Event.changeRed');
    try {
      return super.changeRed(newRed);
    } finally {
      _$_EventActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeGreen(double newGreen) {
    final _$actionInfo =
        _$_EventActionController.startAction(name: '_Event.changeGreen');
    try {
      return super.changeGreen(newGreen);
    } finally {
      _$_EventActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeBlue(double newBlue) {
    final _$actionInfo =
        _$_EventActionController.startAction(name: '_Event.changeBlue');
    try {
      return super.changeBlue(newBlue);
    } finally {
      _$_EventActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeAngle(double newAngle) {
    final _$actionInfo =
        _$_EventActionController.startAction(name: '_Event.changeAngle');
    try {
      return super.changeAngle(newAngle);
    } finally {
      _$_EventActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
red: ${red},
green: ${green},
blue: ${blue},
angle: ${angle}
    ''';
  }
}
