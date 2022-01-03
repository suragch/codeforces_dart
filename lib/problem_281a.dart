// https://codeforces.com/problemset/problem/281/A

/// Capitalizes the first letter of a word
String captitalizeWord(String word) {
  _checkIsCorrectLength(word);
  // You could also solve this with Unicode manipulation but then you would need
  // to support non-English scripts like Cyrillic.
  final firstLetter = word[0].toUpperCase();
  final restOfWord = word.substring(1);
  return '$firstLetter$restOfWord';
}

void _checkIsCorrectLength(String word) {
  if (word.isEmpty) throw ArgumentError('You cannot use an empty string.');
  if (word.length > 1000) throw ArgumentError('That string is too long.');
}
