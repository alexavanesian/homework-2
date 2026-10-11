void main() {
  List<String> items = [];

  print('Is empty initially: ${items.isEmpty}');

  items.add('Apple');
  items.add('Banana');
  items.add('Cherry');

  items.insert(1, 'Orange');

  items.removeAt(2);

  items[0] = 'Mango';

  print('First element: ${items.first}');
  print('Last element: ${items.last}');
  print('Is empty now: ${items.isEmpty}');
  print('Final list: $items');
}
