import 'package:flutter/material.dart';

/// The `ResponsiveWidget` class is a widget that helps in building responsive UIs by rendering
/// different widgets based on the screen size.
class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget(
      {super.key,
      required this.largeScreen,
      this.mediumScreen,
      this.smallScreen});

  final Widget largeScreen;
  final Widget? mediumScreen;
  final Widget? smallScreen;

  /// Large screen is any screen whose width is more than 1200 pixels
  static bool isLargeScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200;
  }

  /// Small screen is any screen whose width is less than 800 pixels
  static bool isSmallScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 800;
  }

  /// Medium screen is any screen whose width is less than 1200 pixels,
  /// and more than 800 pixels
  static bool isMediumScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 800 &&
        MediaQuery.of(context).size.width < 1200;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 1200) {
          return largeScreen;
        } else if (constraints.maxWidth < 1200 && constraints.maxWidth > 800) {
          return mediumScreen ?? largeScreen;
        } else {
          return smallScreen ?? largeScreen;
        }
      },
    );
  }
}
