import 'package:flutter_test/flutter_test.dart';

import 'package:ez_either/ez_either.dart';

class Failure {
  final String message;

  Failure(this.message);
}

main() {
  test(
    "Should throw an exception when type is not listed in cast declaration",
    () {
      expect(
        () {
          // ignore: unused_local_variable
          Either<Exception, String> sut = Either(0);
        },
        throwsA(
          isA<Exception>(),
        ),
      );
    },
  );

  test(
    "Should return right value when type matches casting",
    () {
      final Either<Exception, String> sut = Either("This should work");

      expect(
        sut.isRight(),
        equals(true),
      );
      expect(
        sut.value,
        isA<String>(),
      );
      expect(
        sut.value,
        equals("This should work"),
      );
    },
  );

  test(
    "Should return right value when type matches casting",
    () {
      final Either<Exception, String> sut = Either("This should work");

      expect(
        sut.isRight(),
        equals(true),
      );
      expect(
        sut.value,
        isA<String>(),
      );
      expect(
        sut.value,
        equals("This should work"),
      );
    },
  );

  test(
    "Should return either from left() with correct type",
    () {
      final Either<Failure, String> sut = left(
        Failure("Failure"),
      );

      expect(
        sut.isLeft(),
        equals(true),
      );
      expect(
        sut.isRight(),
        equals(false),
      );
      expect(
        sut.value,
        isA<Failure>(),
      );
      expect(
        sut.value.message,
        equals(
          "Failure",
        ),
      );
    },
  );

  test(
    "Should return either from right() with correct type",
    () {
      final Either<Failure, String> sut = right("String");

      expect(
        sut.isLeft(),
        equals(false),
      );
      expect(
        sut.isRight(),
        equals(true),
      );
      expect(
        sut.value,
        isA<String>(),
      );
      expect(
        sut.value,
        equals(
          "String",
        ),
      );
    },
  );
}
