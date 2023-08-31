import 'package:flutter/material.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsiveWidget(
      largeScreen: Container(
        width: size.width,
        height: size.height * 0.2,
        decoration: const BoxDecoration(color: Colors.red),
      ),
      smallScreen: Container(
        width: size.width,
        height: size.height * 0.2,
        decoration: const BoxDecoration(color: Colors.red),
      ),
    );
  }
}
