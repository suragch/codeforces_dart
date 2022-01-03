import 'package:codeforces_dart/problem_71a.dart';
import 'package:test/test.dart';

void main() {
  group('71A:', () {
    test('invalid input throws argument error', () {
      expect(() => shortenWords(''), throwsArgumentError);
      expect(() => shortenWords('a' * 200), throwsArgumentError);
    });

    test('valid input returns correct Boolean', () {
      expect(shortenWords('4'), '');
      expect(shortenWords('4.1'), '');
      expect(shortenWords('word'), 'word');
      expect(shortenWords('localization'), 'l10n');
      expect(shortenWords('internationalization'), 'i18n');
      expect(shortenWords('pneumonoultramicroscopicsilicovolcanoconiosis'),
          'p43s');
    });

    test('handles multiline input', () {
      const input = '''4
word
localization
internationalization
pneumonoultramicroscopicsilicovolcanoconiosis''';
      expect(shortenWords(input), 'word\nl10n\ni18n\np43s');
    });
  });
}
