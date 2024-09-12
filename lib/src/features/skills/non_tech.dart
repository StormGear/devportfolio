import 'package:flutter/material.dart';
import 'package:portfolio/services/responsive_widget.dart';

class NonTech extends StatelessWidget {
  const NonTech({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 20.0),
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Flexible(
                child: Row(
                  children: [
                    const BulletPoint(),
                    const Text(
                      "Communication",
                      softWrap: true,
                      textScaler: TextScaler.linear(1),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    const BulletPoint(),
                    const Text(
                      "Self-discipline",
                      softWrap: true,
                      textScaler: TextScaler.linear(1),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    ResponsiveWidget.isLargeScreen(context)
                        ? const Row(
                            children: [
                              BulletPoint(),
                              Text(
                                "Leadership",
                                softWrap: true,
                                textScaler: TextScaler.linear(1),
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        : const Text('')
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Expanded(
                child: Row(
                  children: [
                    const BulletPoint(),
                    const Text(
                      "Time Management",
                      softWrap: true,
                      textScaler: TextScaler.linear(1),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    const BulletPoint(),
                    const Text(
                      "Leadership",
                      softWrap: true,
                      textScaler: TextScaler.linear(1),
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: size.width * 0.1,
                    ),
                    ResponsiveWidget.isLargeScreen(context)
                        ? const Row(
                            children: [
                              BulletPoint(),
                              Text(
                                "Creativity",
                                softWrap: true,
                                textScaler: TextScaler.linear(1.2),
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        : const Text('')
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class BulletPoint extends StatelessWidget {
  const BulletPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0), // Adjust the margin as needed
      child: const Icon(
        Icons.circle, // You can use other icons or custom shapes here
        size: 12.0, // Adjust the size of the bullet point
        color: Colors.lightBlue, // Color of the bullet point
      ),
    );
  }
}
