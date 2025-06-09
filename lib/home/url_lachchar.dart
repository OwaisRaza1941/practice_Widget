import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;

class UrlLachchar extends StatelessWidget {
  const UrlLachchar({super.key});

  @override
  Widget build(BuildContext context) {
    // Har Device ke leye chahee web , andriond, ios ho:
    Future<void> launchSmartUrl({required String urlString}) async {
      final Uri url = Uri.parse(urlString);

      LaunchMode mode;

      if (kIsWeb) {
        mode = LaunchMode.platformDefault;
      } else if (Platform.isAndroid || Platform.isIOS) {
        mode = LaunchMode.externalApplication;
      } else {
        mode = LaunchMode.platformDefault; // fallback
      }

      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: mode);
      } else {
        throw 'Could not launch $url';
      }
    }

    // Future<void> launchSingleUrl({required String url}) async {
    //   final Uri url = Uri.parse('url : ');
    //   try {
    //     final launched = await launchUrl(
    //       url,
    //       mode: LaunchMode.platformDefault, // ✅ Use this for web
    //     );
    //     if (!launched) {
    //       print('Could not launch $url');
    //     }
    //   } catch (e) {
    //     print('Error launching URL: $e');
    //   }
    // }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
            width: 340,
            child: ElevatedButton(
              onPressed:
                  () => launchSmartUrl(
                    urlString: "https://github.com/OwaisRaza1941",
                  ),
              child: Text("Go to My GitHub Page"),
            ),
          ),
          SizedBox(
            height: 50,
            width: 340,
            child: ElevatedButton(
              onPressed:
                  () => launchSmartUrl(
                    urlString: "https://www.facebook.com/FlutterwithOwaisRaza",
                  ),
              child: Text("Go to My Facebook page"),
            ),
          ),
          SizedBox(
            height: 50,
            width: 340,
            child: ElevatedButton(
              onPressed:
                  () => launchSmartUrl(
                    urlString: "https://github.com/OwaisRaza1941",
                  ),
              child: Text("Go to My GitHub Page"),
            ),
          ),
        ],
      ),
    );
  }
}
