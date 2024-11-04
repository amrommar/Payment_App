import 'package:flutter/material.dart';
import 'package:payment_app/feature/checkout/presentation/views/widgets/custom_dashed_line.dart';
import 'package:payment_app/feature/checkout/presentation/views/widgets/thank_you_card.dart';

import 'custom_check_icon.dart';

class ThankYouViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 45, right: 16, bottom: 16),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouCard(),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.172,
            left: 20,
            right: 20,
            child: CustomDashedLine(),
          ),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.15,
              left: -22,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.15,
              right: -22,
              child: CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(top: -45, right: 0, left: 0, child: CustomCheckIcon()),
        ],
      ),
    );
  }
}
