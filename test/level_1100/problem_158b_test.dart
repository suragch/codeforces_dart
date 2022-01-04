import 'package:codeforces_dart/level_1100/problem_158b.dart';
import 'package:test/test.dart';

void main() {
  group('158B:', () {
    test('verify arguments', () {
      expect(() => minTaxis(<int>[]), throwsArgumentError);
      expect(() => minTaxis(List.filled(100001, 1)), throwsArgumentError);
      expect(() => minTaxis([-1]), throwsArgumentError);
      expect(() => minTaxis([0]), throwsArgumentError);
      expect(() => minTaxis([5]), throwsArgumentError);
    });

    test('valid input returns min number of taxis', () {
      expect(minTaxis([1, 2, 4, 3, 3]), 4);
      expect(minTaxis([2, 3, 4, 4, 2, 1, 3, 1]), 5);
    });
  });
}
