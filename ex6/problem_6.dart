Future<int> getNumber(int value) async {
  if (value > 0) {
    await Future.delayed(const Duration(milliseconds: 100));
    return value;
  }
  throw Exception();
}

Future<int> safeGetNumber(int value) async {
  try {
    return await getNumber(value);
  } catch (e) {
    return 0;
  }
}

Future<void> main() async {
  print(await safeGetNumber(42));
  print(await safeGetNumber(0));
  print(await safeGetNumber(-5));
}
