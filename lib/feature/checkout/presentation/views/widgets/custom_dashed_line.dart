import 'package:flutter/material.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        35,
        (index) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                height: 2,
                color: Color(0xffB8B8B8),
              ),
            ),
          );
        },
      ),
    );
  }
}
