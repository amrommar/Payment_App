import 'package:flutter/material.dart';
import 'package:payment_app/feature/checkout/presentation/views/payment_details_view.dart';
import 'package:payment_app/feature/checkout/presentation/views/widgets/custom_button.dart';
import 'package:payment_app/feature/checkout/presentation/views/widgets/order_info_item.dart';

import '../../../../../core/utils/styles.dart';

class MyCartViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 25),
          Expanded(child: Image.asset('assets/images/basket.png')),
          SizedBox(height: 25),
          OrderInfoItem(text: 'Order Subtotal:', num: r"42.95$"),
          SizedBox(height: 5),
          OrderInfoItem(text: 'Shipping:', num: r"55.52$"),
          SizedBox(height: 5),
          OrderInfoItem(text: 'Discount:', num: r"20.10 $"),
          SizedBox(height: 5),
          Divider(),
          TotalPrice(text: 'Total:', num: r'150$'),
          SizedBox(height: 20),
          CustomButton(
            text: 'Complete Payment',
            onPressed: () {
              Navigator.pushNamed(context, PaymentDetailsView.routeName);
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}

class TotalPrice extends StatelessWidget {
  String text;
  String num;

  TotalPrice({required this.text, required this.num});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: Styles.style24,
        ),
        Text(
          num,
          textAlign: TextAlign.center,
          style: Styles.style24,
        ),
      ],
    );
  }
}
