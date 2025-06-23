import 'payment-processor.dart';

class CashPayment extends PaymentProcessor {
  processPayment(double amount) {
    print('Processing cash payment of \$${amount}');
    throw new Exception("Cannot process cash payment online!");
  }
}
