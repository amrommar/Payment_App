import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/styles.dart';

class PaymentInfoWidget extends StatelessWidget {
  String text;
  String value;

  PaymentInfoWidget({required this.text, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Styles.style18,
        ),
        Text(
          value,
          style: Styles.styleBold18,
        ),
      ],
    );
  }
}
