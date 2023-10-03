import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Launcher {
  const Launcher();

  static Future<void> launch(
      String? authority, String? path, bool? secure) async {
    final Uri url = Uri.https(authority!, path!);
    final Uri insecureUrl = Uri.http(authority, path);
    if (secure == false) {
      if (await canLaunchUrl(insecureUrl)) {
        await launchUrl(insecureUrl);
      } else {
        Get.snackbar("Problem detected", "Could not launch URL.");
      }
    } else {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        Get.snackbar("Problem detected", "Could not launch URL.");
      }
    }
  }

  static Future<void> launchEmailClient(String recipient) async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final Uri params = Uri(
      scheme: 'mailto',
      path: recipient,
      query: encodeQueryParameters(<String, String>{'subject': 'Hello, '}),
    );

    if (await canLaunchUrl(params)) {
      await launchUrl(params);
    } else {
      // console.d('Could not launch email client');
    }
  }
}
