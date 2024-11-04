import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xffEDEDED),
      child: CircleAvatar(
        radius: 40,
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 50,
        ),
        backgroundColor: Color(0xff34A853),
      ),
    );
  }
}
