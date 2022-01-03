// https://codeforces.com/problemset/problem/71/A

/// Shorten words that are longer than 10 characters
///
/// The input words can occur on multiple lines, one word per line.
///
/// 1 ≤ n ≤ 100 where n is the word length
String shortenWords(String words) {
  final output = <String>[];
  final lines = words.split('\n');
  for (final line in lines) {
    final shortened = _shortenWord(line);
    if (shortened.isEmpty) continue;
    output.add(shortened);
  }
  return output.join('\n');
}

String _shortenWord(String word) {
  _checkIsCorrectLength(word);
  if (_isNumber(word)) return '';
  if (word.length <= 10) return word;
  return _replaceMiddleWithNumber(word);
}

void _checkIsCorrectLength(String word) {
  if (word.isEmpty) throw ArgumentError('You cannot use an empty string.');
  if (word.length > 100) throw ArgumentError('That string is too long.');
}

bool _isNumber(String word) {
  return num.tryParse(word) != null;
}

String _replaceMiddleWithNumber(String word) {
  final firstLetter = word[0];
  final number = word.length - 2;
  final lastLetter = word[word.length - 1];
  return '$firstLetter$number$lastLetter';
}
