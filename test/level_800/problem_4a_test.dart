import 'package:codeforces_dart/level_800/problem_4a.dart';
import 'package:test/test.dart';

void main() {
  group('4A:', () {
    test('invalid input throws argument error', () {
      expect(() => canDivideWatermellonInEvenKilos(0), throwsArgumentError);
      expect(() => canDivideWatermellonInEvenKilos(200), throwsArgumentError);
    });

    test('valid input returns correct Boolean', () {
      expect(canDivideWatermellonInEvenKilos(8), true);
      expect(canDivideWatermellonInEvenKilos(9), false);
      expect(canDivideWatermellonInEvenKilos(2), false);
      expect(canDivideWatermellonInEvenKilos(6), true);
    });
  });
}
