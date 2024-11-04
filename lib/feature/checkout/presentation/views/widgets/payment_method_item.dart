import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  bool isActive;
  String path;

  PaymentMethodItem({this.isActive = false, required this.path});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 62,
      width: 103,
      decoration: ShapeDecoration(
          shadows: [
            BoxShadow(
              color: isActive ? const Color(0xff34A853) : Colors.white,
              blurRadius: 4,
              offset: const Offset(0, 0),
              spreadRadius: 0,
            )
          ],
          shape: RoundedRectangleBorder(
            side: BorderSide(color: isActive ? const Color(0xff34A853) : Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(15),
          )),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: SvgPicture.asset(
            path,
            height: 40,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}
