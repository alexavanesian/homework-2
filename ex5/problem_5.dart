class Product {
  final String name;
  final String category;
  final double price;

  Product(this.name, this.category, this.price);
}

Map<String, double> totalByCategory(List<Product> products) {
  final Map<String, double> totals = {};
  for (final product in products) {
    totals[product.category] = (totals[product.category] ?? 0.0) + product.price;
  }
  return totals;
}

void main() {
  final products = [
    Product('A1', 'C1', 100.0),
    Product('A2', 'C1', 50.0),
    Product('B1', 'C2', 30.0),
  ];

  print(totalByCategory(products));
}
