import 'package:flutter/material.dart';
import 'package:payment_app/feature/checkout/presentation/views/my_cart_view.dart';
import 'package:payment_app/feature/checkout/presentation/views/payment_details_view.dart';

import 'feature/checkout/presentation/views/thank_you_view.dart';

void main() {
  runApp(const Payment_App());
}

class Payment_App extends StatelessWidget {
  const Payment_App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyCartView.routeName,
      routes: {
        MyCartView.routeName: (context) => MyCartView(),
        PaymentDetailsView.routeName: (context) => PaymentDetailsView(),
        ThankYouView.routeName: (context) => ThankYouView(),
      },
    );
  }
}
