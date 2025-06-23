import 'payment-processor.dart';

class CreditCardPayment extends PaymentProcessor {
  processPayment(double amount) {
    print('Processing credit card payment of \$${amount}');
    print("Validating credit card details...");
    print("Charging the credit card...");
  }
}
