library ez_either;

abstract class Either<L, R> {
  Either(this._value);
  dynamic _value;

  C fold<C>(
    C Function(L left) onLeft,
    C Function(R right) onRight,
  );

  bool isLeft();
  bool isRight();
}

class Left<L, R> extends Either<L, R> {
  Left(L super.value);

  @override
  C fold<C>(C Function(L left) onLeft, C Function(R right) onRight) {
    return onLeft(_value);
  }

  @override
  bool isLeft() => true;

  @override
  bool isRight() => false;
}

class Right<L, R> extends Either<L, R> {
  Right(R super.value);

  @override
  C fold<C>(C Function(L left) onLeft, C Function(R right) onRight) {
    return onRight(_value);
  }

  @override
  bool isLeft() => false;

  @override
  bool isRight() => true;
}
