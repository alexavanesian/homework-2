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
    Product('Laptop', 'Electronics', 999.99),
    Product('Phone', 'Electronics', 699.50),
    Product('Shirt', 'Clothing', 29.99),
    Product('Jeans', 'Clothing', 49.99),
    Product('Coffee', 'Groceries', 12.50),
  ];

  final totals = totalByCategory(products);
  print('Total by category: $totals');
}
