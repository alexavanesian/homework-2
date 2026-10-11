abstract class Payment {
  double calculateFee(double amount);
}

class CardPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return amount * 0.02;
  }
}

class CashPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return 0.0;
  }
}

class CryptoPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return amount * 0.05;
  }
}

double calculateTotal(Payment payment, double amount) {
  return amount + payment.calculateFee(amount);
}

void main() {
  const amount = 100.0;

  final card = CardPayment();
  final cash = CashPayment();
  final crypto = CryptoPayment();

  print('Card total for \$$amount: \$${calculateTotal(card, amount)}');
  print('Cash total for \$$amount: \$${calculateTotal(cash, amount)}');
  print('Crypto total for \$$amount: \$${calculateTotal(crypto, amount)}');
}
