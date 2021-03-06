# Ez_Either

Most times I add packages such as fpdart to my projects and I notice that the only thing I am really using in my code is Either. To solve this, I'm creating this package that is nothing but a simpler version of Either.

## Installing

```yaml
# pubspec.yaml
dependencies:
  ez_either: ^0.0.2 # Check out the latest version
```

## Usage

You should use Either when your code can return two different types, a Right (That should be the type you need to keep your business flow going on) and a Left (A exception, error or something that will need to be handled)

```dart
final Either<Exception, String> either = Either("This should work");
print(either.isRight()); // Prints true
print(either.isLeft()); // Prints false
either.value // Will return the value given in the constructor
// It will return as a dynamic, and you should cast it, just like below
final String result = either.value;
```

```dart
final Either<Failure, UserDto> userOrFailure = Either(5); // It will throw an exception, you can only give values declared as either Left or Right
```
