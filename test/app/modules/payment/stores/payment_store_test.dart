import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modular_navigation_routes/app/modules/payment/payment_module.dart';

void main() {
  initModule(PaymentModule());
  // PaymentStore payment;
  //
  setUp(() {
    //     payment = PaymentModule.to.get<PaymentStore>();
  });

  group('PaymentStore Test', () {
    //   test("First Test", () {
    //     expect(payment, isInstanceOf<PaymentStore>());
    //   });

    //   test("Set Value", () {
    //     expect(payment.value, equals(0));
    //     payment.increment();
    //     expect(payment.value, equals(1));
    //   });
  });
}
