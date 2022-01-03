/// Whether a watermellon of weight [w] in kilograms can be divided into
/// two pieces whose weights are even numbers.
///
/// 1 ≤ w ≤ 100
bool canDivideWatermellonInEvenKilos(int w) {
  if (w < 1) throw ArgumentError('The weight must not be less than 1.');
  if (w > 100) throw ArgumentError('The weight must not be greater than 100.');
  return w.isEven && (w ~/ 2).isEven;
}
