import 'package:flutter/material.dart';
import 'package:payment_app/feature/checkout/presentation/views/widgets/my_cart_view_body.dart';

import '../../../../core/utils/styles.dart';

class MyCartView extends StatelessWidget {
  static const String routeName = 'MyCartView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'My Cart',
          style: Styles.style25,
        ),
      ),
      body: MyCartViewBody(),
    );
  }
}
