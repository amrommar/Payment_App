import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class OrderInfoItem extends StatelessWidget {
  String text;
  String num;

  OrderInfoItem({required this.text, required this.num});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        Text(
          num,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
      ],
    );
  }
}
