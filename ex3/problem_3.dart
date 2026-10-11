Future<int> delayedValue(int value) async {
  await Future.delayed(const Duration(milliseconds: 100));
  return value;
}

Future<int> sumValues(int a, int b) async {
  final valA = await delayedValue(a);
  final valB = await delayedValue(b);
  return valA + valB;
}

Future<void> main() async {
  final result = await sumValues(15, 27);
  print(result);
}
