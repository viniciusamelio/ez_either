# Ez_Either

Most times I add packages such as fpdart to my projects and I notice that the only thing I am really using in my code is Either. To solve this, I'm creating this package that is nothing but a simpler version of Either.

## Installing

```yaml
# pubspec.yaml
dependencies:
  ez_either: ^1.0.0 # Check out the latest version
```

## Usage

You should use Either when your code can return two different types, a Right (That should be the type you need to keep your business flow going on) and a Left (A exception, error or something that will need to be handled)

```dart
import "package:ez_either:ez_either.dart";

// It is recommended to extract value using fold
final Either<Failure, UserDto> userOrFailure = Right(UserDto());

print(either.isRight()); // true
print(either.isLeft()); // false

final result = usersOrFailure.fold(
  (left) => left,
  (right) => right,
);
```
