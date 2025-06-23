import 'cash-payment.dart';
import 'credit-card-payment.dart';
import 'payment-processor.dart';
import 'paypay-payment.dart';

void handlePayment(PaymentProcessor paymentProcessor, double amount) {
  paymentProcessor.processPayment(amount);
}

void main() {
  final creditCardPayment = new CreditCardPayment();
  handlePayment(
      creditCardPayment, 100); // Output: Processed payment successfully

  final payPalPayment = new PayPalPayment();
  handlePayment(payPalPayment, 200); // Output: Processed payment successfully

  final cashPayment = new CashPayment();
  handlePayment(
      cashPayment, 50); // Output: Error: Cannot process cash payment online!
}
