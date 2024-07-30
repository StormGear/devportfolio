import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/strings/image_strings.dart';
import 'package:portfolio/src/features/contact/quick_contact.dart';
import 'package:portfolio/services/responsive_widget.dart';
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
                  launchEmailClient("papakofiboahen@gmail.com");
                },
                icon: SvgPicture.asset(
                  gmailLogo,
                  height: 30,
                ),
                alignment: Alignment.centerLeft,
              ),
              IconButton(
                onPressed: () async {
                  var url = Uri.https('github.com', '/StormGear');
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
                  var url = Uri.https('x.com',
                      '/kofiishere');
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
              Image(image: AssetImage(flutterLogo), height: 25.0, width: 25.0),
              Text(
                "made with flutter",
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
                launchEmailClient("papakofiboahen@gmail.com");
              },
              icon: SvgPicture.asset(
                gmailLogo,
                height: 30,
              ),
              alignment: Alignment.centerLeft,
            ),
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
                    'twitter.com', '/kofiishere');
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
            Image(image: AssetImage(flutterLogo), height: 25.0, width: 25.0),
            Text(
              "made with flutter",
              textScaleFactor: 0.8,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ]),
    );
  }
}
