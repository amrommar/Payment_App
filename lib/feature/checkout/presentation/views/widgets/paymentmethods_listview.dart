import 'package:flutter/material.dart';
import 'package:payment_app/feature/checkout/presentation/views/widgets/payment_method_item.dart';

class PaymentMethodsListview extends StatefulWidget {
  @override
  State<PaymentMethodsListview> createState() => _PaymentMethodsListviewState();
}

class _PaymentMethodsListviewState extends State<PaymentMethodsListview> {
  List<String> paymentMethodsItems = [
    'assets/images/paypal.svg',
    'assets/images/MasterCard.svg',
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodsItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: InkWell(
              onTap: () {
                activeIndex = index;
                setState(() {});
              },
              child: PaymentMethodItem(
                isActive: activeIndex == index,
                path: paymentMethodsItems[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
