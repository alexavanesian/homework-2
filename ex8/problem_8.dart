List<int> findPair(List<int> numbers, int target) {
  final Map<int, int> seen = {};

  for (int i = 0; i < numbers.length; i++) {
    final complement = target - numbers[i];
    if (seen.containsKey(complement)) {
      return [seen[complement]!, i];
    }
    seen[numbers[i]] = i;
  }

  return [];
}

void main() {
  final numbers = [2, 7, 11, 15];
  final target = 9;
  print('findPair([2, 7, 11, 15], 9): ${findPair(numbers, target)}');

  print('findPair([3, 2, 4], 6): ${findPair([3, 2, 4], 6)}');
  print('findPair([1, 2, 3], 10): ${findPair([1, 2, 3], 10)}');
  print('findPair([], 5): ${findPair([], 5)}');
}
