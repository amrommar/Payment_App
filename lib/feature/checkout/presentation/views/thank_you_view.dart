import 'package:flutter/material.dart';
import 'package:payment_app/feature/checkout/presentation/views/widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  static const String routeName = 'ThankYouView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: ThankYouViewBody(),
    );
  }
}
