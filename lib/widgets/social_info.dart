import 'package:flutter/material.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialInfo extends StatelessWidget {
  const SocialInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () async {
                  var url = Uri.https('github.com', '/Boahen123');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  }
                },
                icon: const Icon(
                  SimpleIcons.github,
                  color: Colors.white,
                ),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(width: MediaQuery.of(context).size.height * 0.01),
              IconButton(
                onPressed: () async {
                  var url = Uri.https('linkedin.com', '/in/papakofiboahen');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  }
                },
                icon: const Icon(
                  SimpleIcons.linkedin,
                  color: Colors.blue,
                  size: 25.0,
                ),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(width: MediaQuery.of(context).size.height * 0.01),
              IconButton(
                onPressed: () async {
                  var url = Uri.https('twitter.com',
                      '/kofiishere?t=5oqhIj7rjrYqRCnP9GpXIQ&s=09');
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  }
                },
                icon: const Icon(
                  SimpleIcons.twitter,
                  color: Colors.blue,
                  size: 25.0,
                ),
                alignment: Alignment.centerLeft,
              ),
            ],
          ),
          SizedBox(
            width: size.width * 0.30,
          ),
          const Row(
            children: [
              Image(
                  image: AssetImage('assets/flutter.png'),
                  height: 25.0,
                  width: 25.0),
              Text(
                "made with Flutter",
                textScaleFactor: 0.8,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ],
      ),
      smallScreen:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () async {
                var url = Uri.https('github.com', '/Boahen123');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
              icon: const Icon(
                SimpleIcons.github,
                color: Colors.white,
              ),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(width: MediaQuery.of(context).size.height * 0.01),
            IconButton(
              onPressed: () async {
                var url = Uri.https('linkedin.com', '/in/papakofiboahen');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
              icon: const Icon(
                SimpleIcons.linkedin,
                color: Colors.blue,
                size: 25.0,
              ),
              alignment: Alignment.centerLeft,
            ),
            SizedBox(width: MediaQuery.of(context).size.height * 0.01),
            IconButton(
              onPressed: () async {
                var url = Uri.https(
                    'twitter.com', '/kofiishere?t=5oqhIj7rjrYqRCnP9GpXIQ&s=09');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                }
              },
              icon: const Icon(
                SimpleIcons.twitter,
                color: Colors.blue,
                size: 25.0,
              ),
              alignment: Alignment.centerLeft,
            ),
          ],
        ),
        const Row(
          children: [
            Image(
                image: AssetImage('assets/flutter.png'),
                height: 25.0,
                width: 25.0),
            Text(
              "Made with Flutter",
              textScaleFactor: 0.8,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ]),
    );
  }
}
