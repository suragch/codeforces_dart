// https://codeforces.com/problemset/problem/158/B

import 'dart:math';

/// Minimum number of taxis it would take to transport groups of children
///
/// Each [group] can contain 1, 2, 3, or 4 children.
int minTaxis(List<int> groups) {
  _checkArguments(groups);

  // count the frequency of each group size
  final frequencyList = List.filled(5, 0);
  for (final size in groups) {
    frequencyList[size]++;
  }

  print(frequencyList);
  var totalTaxis = 0;

  // all of the size 4 groups need their own taxi
  totalTaxis += frequencyList[4];

  // all of the size 3 groups also need their own taxi but can put in some 1s
  totalTaxis += frequencyList[3];
  frequencyList[1] = max(frequencyList[1] - frequencyList[3], 0);

  // The 2s can travel together
  totalTaxis += frequencyList[2] ~/ 2;

  // If there was a couple spaces left in the last 2, the a couple 1s can go.
  if (frequencyList[2].isOdd) {
    totalTaxis++;
    frequencyList[1] = max(frequencyList[1] - 2, 0);
  }

  // The rest of the 1s can pile in together
  totalTaxis += frequencyList[1] ~/ 4;
  if (frequencyList[1] % 4 != 0) {
    totalTaxis++;
  }

  return totalTaxis;
}

void _checkArguments(List<int> groups) {
  if (groups.isEmpty || groups.length > 100000) {
    throw ArgumentError('The number of groups must be from 1 to 100000.');
  }
  for (final size in groups) {
    if (size < 1 || size > 4) {
      throw ArgumentError('Each group can only contain 1 to 4 children.');
    }
  }
}
