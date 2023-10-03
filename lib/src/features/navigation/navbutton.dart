import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  const NavButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.color = Colors.lightBlue});

  final String text;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        // foregroundColor: color,
        shape: const StadiumBorder(),
        side: BorderSide(color: color, width: 3.0),
      ),
      child: Text(text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }
}
