Future<int> getNumber(int value) async {
  if (value > 0) {
    await Future.delayed(const Duration(milliseconds: 100));
    return value;
  }
  throw Exception('Value must be positive');
}

Future<int> safeGetNumber(int value) async {
  try {
    return await getNumber(value);
  } catch (e) {
    return 0;
  }
}

Future<void> main() async {
  final positiveResult = await safeGetNumber(42);
  print('Result for 42: $positiveResult');

  final zeroResult = await safeGetNumber(0);
  print('Result for 0: $zeroResult');

  final negativeResult = await safeGetNumber(-5);
  print('Result for -5: $negativeResult');
}
