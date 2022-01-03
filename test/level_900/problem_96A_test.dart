import 'package:codeforces_dart/level_900/problem_96A.dart';
import 'package:test/test.dart';

void main() {
  group('96A:', () {
    test('invalid length throws argument error', () {
      expect(() => isDangerous(''), throwsArgumentError);
      expect(() => isDangerous('01' * 100), throwsArgumentError);
    });

    test('non-zero or one content throws argument error', () {
      expect(() => isDangerous('hello'), throwsArgumentError);
      expect(() => isDangerous('1010x'), throwsArgumentError);
    });

    test('input must contain both 0 and 1', () {
      expect(() => isDangerous('0000'), throwsArgumentError);
      expect(() => isDangerous('1111'), throwsArgumentError);
    });

    test('valid input returns correct Boolean', () {
      expect(isDangerous('001001'), false);
      expect(isDangerous('1000000001'), true);
      expect(isDangerous('00100110111111101'), true);
      expect(isDangerous('11110111011101'), false);
    });
  });
}
