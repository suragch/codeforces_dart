// https://codeforces.com/problemset/problem/96/A

/// Tells if a string is dangerous or not
///
/// 0s and 1s represent players of different teams.
/// If 7 or more of one number is together then dangerous.
bool isDangerous(String numbers) {
  _checkIsCorrectLength(numbers);
  _checkOnlyContainsZerosAndOnes(numbers);
  _checkContainsBothZeroAndOne(numbers);
  return _containsSevenSequentially(numbers);
}

void _checkIsCorrectLength(String word) {
  if (word.isEmpty) throw ArgumentError('You cannot use an empty string.');
  if (word.length > 100) throw ArgumentError('That string is too long.');
}

const zero = 48;
const one = 49;

void _checkOnlyContainsZerosAndOnes(String numbers) {
  for (final codeUnit in numbers.codeUnits) {
    if (codeUnit != zero && codeUnit != one) {
      throw ArgumentError('Input cannot contain anything except 0s and 1s');
    }
  }
}

void _checkContainsBothZeroAndOne(String numbers) {
  var containsZero = false;
  var containsOne = false;
  for (final codeUnit in numbers.codeUnits) {
    if (codeUnit == zero) {
      containsZero = true;
    } else if (codeUnit == one) {
      containsOne = true;
    }
    if (containsOne && containsZero) return;
  }
  throw ArgumentError('Input must contain both 0 and 1');
}

bool _containsSevenSequentially(String numbers) {
  var counter = 0;
  var previous = -1;
  for (final codeUnit in numbers.codeUnits) {
    if (codeUnit == previous) {
      counter++;
    } else {
      counter = 1;
    }
    previous = codeUnit;
    if (counter >= 7) return true;
  }
  return false;
}
