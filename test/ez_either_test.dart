import 'package:ez_either/ez_either.dart';
import 'package:test/test.dart';

void main() {
  late Either<Exception, String> sut;

  test("SUT.fold should execute onLeft when it is a left", () async {
    sut = Left(
      Exception(),
    );

    expect(
      sut.fold((left) => left, (right) => right),
      isA<Exception>(),
    );
    expect(sut.isLeft(), isTrue);
  });

  test("SUT.fold should execute onRight when it is a right", () async {
    sut = Right("This is a right");

    expect(
      sut.fold((left) => left, (right) => right),
      isA<String>(),
    );
    expect(sut.isRight(), isTrue);
  });
}
