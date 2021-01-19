library decorator;

import 'dart:async';

const String parametersFieldName = 'parameters';
const String wrapperFieldName = 'wrapper';

typedef WrapperFunction<T> = FutureOr<T> Function(
  FutureOr<T> Function() body, {
  dynamic parameters,
});

class DecoratorClass<T> {
  final WrapperFunction<T> wrapper;
  final dynamic parameters;

  const DecoratorClass({this.wrapper, this.parameters});
}

class Decorator<T> {
  final WrapperFunction<T> wrapper;
  final dynamic parameters;

  const Decorator({this.wrapper, this.parameters});
}
