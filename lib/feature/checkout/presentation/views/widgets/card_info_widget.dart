import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50),
      width: 305,
      padding: EdgeInsets.symmetric(horizontal: 23, vertical: 16),
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          )),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/logo.svg'),
          SizedBox(width: 23),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Credit Card', style: Styles.style18),
              Text('Mastercard **78', style: Styles.style16),
            ],
          )
        ],
      ),
    );
  }
}
