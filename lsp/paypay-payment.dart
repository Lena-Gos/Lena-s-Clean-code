import 'payment-processor.dart';

class PayPalPayment extends PaymentProcessor {
  processPayment(double amount) {
    print('Processing PayPal payment of \$${amount}');
    print("Redirecting to PayPal...");
    print("Completing PayPal transaction...");
  }
}
