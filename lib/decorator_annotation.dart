library decorator_annotation;

import 'dart:async';

const String parametersFieldName = 'parameters';
const String wrapperFieldName = 'wrapper';
const String forAllWhereAnyFieldName = 'forAllWhereAny';
const String ignoreFieldName = 'ignore';

enum MethodPredicate { hasOverride }

typedef WrapperFunction<T> = FutureOr<T> Function(
  FutureOr<T> Function() body, {
  dynamic parameters,
});

class DecoratorClass<T> {
  final WrapperFunction<T> wrapper;
  final dynamic parameters;
  final Set<Set<MethodPredicate>> forAllWhereAny;

  const DecoratorClass({
    this.wrapper,
    this.parameters,
    this.forAllWhereAny,
  }) : assert(
          (wrapper == null && forAllWhereAny == null) || wrapper != null,
          'forAllWhereAny can only be used with provided wrapper',
        );
}

class Decorator<T> {
  final WrapperFunction<T> wrapper;
  final dynamic parameters;
  final bool ignore;

  const Decorator({
    this.wrapper,
    this.parameters,
    this.ignore = false,
  });
}
