// https://codeforces.com/problemset/problem/1/A

/// The number of flagstones needed to cover Theatre Square.
int neededFlagstones({
  /// east-west distance in meters of the Theatre Square
  required int n,

  /// north-south distance in meters of the Theatre Square
  required int m,

  /// length in meters of one side of square flagstone
  required int a,
}) {
  _checkArguments(n, m, a);
  final numberForN = (n / a).ceil();
  final numberForM = (m / a).ceil();
  return numberForN * numberForM;
}

void _checkArguments(int n, int m, int a) {
  if (n < 1 ||
      n > 1000000000 ||
      m < 1 ||
      m > 1000000000 ||
      a < 1 ||
      a > 1000000000) {
    throw ArgumentError('Values must be in range: 1 <= x <= 1000000000');
  }
}
