import 'package:codeforces_dart/problem_281a.dart';
import 'package:codeforces_dart/problem_71a.dart';
import 'package:test/test.dart';

void main() {
  group('281A:', () {
    test('invalid input throws argument error', () {
      expect(() => captitalizeWord(''), throwsArgumentError);
      expect(() => captitalizeWord('a' * 2000), throwsArgumentError);
    });

    test('valid input returns correct Boolean', () {
      expect(captitalizeWord('ApPLe'), 'ApPLe');
      expect(captitalizeWord('konjac'), 'Konjac');
      expect(captitalizeWord('k'), 'K');
      expect(captitalizeWord('россия'), 'Россия');
    });
  });
}
