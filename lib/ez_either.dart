library ez_either;

class Either<L, R> {
  late final dynamic value;

  Either(this.value) {
    _handleInvalidType();
  }

  bool isLeft() {
    _handleInvalidType();
    if (value.runtimeType == L) {
      return true;
    }
    return false;
  }

  bool isRight() {
    _handleInvalidType();
    if (value.runtimeType == R) {
      return true;
    }
    return false;
  }

  bool get _invalidType => value.runtimeType != R && value.runtimeType != L;

  void _handleInvalidType() {
    if (_invalidType) {
      throw Exception(
        "Value not in declared types",
      );
    }
  }
}

Either<L, R> right<L, R>(R value) => Either<L, R>(value);
Either<L, R> left<L, R>(L value) => Either<L, R>(value);
