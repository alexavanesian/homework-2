void main() {
  List<String> items = [];

  print(items.isEmpty);

  items.add('A');
  items.add('B');
  items.add('C');

  items.insert(1, 'D');

  items.removeAt(2);

  items[0] = 'E';

  print(items.first);
  print(items.last);
  print(items.isEmpty);
  print(items);
}
