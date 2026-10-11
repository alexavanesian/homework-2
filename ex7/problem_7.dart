abstract class Payment {
  double calculateFee(double amount);
}

class CardPayment extends Payment {
  @override
  double calculateFee(double amount) => amount * 0.02;
}

class CashPayment extends Payment {
  @override
  double calculateFee(double amount) => 0.0;
}

class CryptoPayment extends Payment {
  @override
  double calculateFee(double amount) => amount * 0.05;
}

double calculateTotal(Payment payment, double amount) {
  return amount + payment.calculateFee(amount);
}

void main() {
  const amount = 100.0;
  print(calculateTotal(CardPayment(), amount));
  print(calculateTotal(CashPayment(), amount));
  print(calculateTotal(CryptoPayment(), amount));
}
