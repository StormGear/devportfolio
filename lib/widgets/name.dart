import 'package:flutter/material.dart';

class Papa extends StatelessWidget {
  const Papa({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "< Papa />",
          textScaleFactor: 2,
          style: TextStyle(
            color: Colors.lightBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
