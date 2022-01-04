import 'package:codeforces_dart/level_1000/problem_1a.dart';
import 'package:test/test.dart';

void main() {
  group('1A:', () {
    test('invalid input throws argument error', () {
      expect(
        () => neededFlagstones(n: 0, m: 0, a: 0),
        throwsArgumentError,
      );
      expect(
        () => neededFlagstones(n: 0, m: 1, a: 1),
        throwsArgumentError,
      );
      expect(
        () => neededFlagstones(n: 1, m: 0, a: 1),
        throwsArgumentError,
      );
      expect(
        () => neededFlagstones(n: 1, m: 1, a: 0),
        throwsArgumentError,
      );
      expect(
        () => neededFlagstones(n: 1000000001, m: 1, a: 1),
        throwsArgumentError,
      );
      expect(
        () => neededFlagstones(n: 1000000001, m: 0, a: 1),
        throwsArgumentError,
      );
      expect(
        () => neededFlagstones(n: 1000000001, m: 1, a: 0),
        throwsArgumentError,
      );
    });

    test('finds correct answer', () {
      var answer = neededFlagstones(n: 6, m: 6, a: 4);
      expect(answer, 4);
      answer = neededFlagstones(n: 1, m: 1, a: 4);
      expect(answer, 1);
      answer = neededFlagstones(n: 16, m: 16, a: 4);
      expect(answer, 16);
    });
  });
}
