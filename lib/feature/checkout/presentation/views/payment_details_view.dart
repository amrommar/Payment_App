import 'package:flutter/material.dart';
import 'package:payment_app/feature/checkout/presentation/views/widgets/payment_details_view_body.dart';

class PaymentDetailsView extends StatelessWidget {
  static const String routeName = 'PaymentDetailsView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text('Payment Details'),
      ),
      body: PaymentDetailsViewBody(),
    );
  }
}
