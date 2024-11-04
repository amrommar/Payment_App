import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/core/utils/styles.dart';
import 'package:payment_app/feature/checkout/presentation/views/widgets/my_cart_view_body.dart';
import 'package:payment_app/feature/checkout/presentation/views/widgets/payment_info_widget.dart';

import 'card_info_widget.dart';

class ThankYouCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 50 + 16, right: 22, left: 22),
      decoration: ShapeDecoration(
          color: const Color(0xffEDEDED),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          )),
      child: Column(
        children: [
          Text('Thank You!', style: Styles.style25),
          Text('Your transaction was successful', textAlign: TextAlign.center, style: Styles.style20),
          SizedBox(height: 42),
          PaymentInfoWidget(text: 'Date', value: '4/11/2024'),
          SizedBox(height: 20),
          PaymentInfoWidget(text: 'Time', value: '10:30 am'),
          SizedBox(height: 20),
          PaymentInfoWidget(text: 'To', value: 'Amr Omar'),
          Divider(height: 60, color: Color(0xffC7C7C7), thickness: 2),
          TotalPrice(text: 'Total: ', num: r'150$'),
          CardInfoWidget(),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(FontAwesomeIcons.barcode, size: 58),
              Container(
                width: 113,
                height: 58,
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1.5, color: Color(0xff34A853)),
                        borderRadius: BorderRadius.circular(15))),
                child: Center(
                  child: Text(
                    'PAID',
                    style: Styles.style24.copyWith(color: Color(0xff34A853)),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.15 / 2) - 29,
          )
        ],
      ),
    );
  }
}
