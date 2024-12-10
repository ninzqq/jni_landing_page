import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/link.dart';

class IntroductionContainer extends StatelessWidget {
  const IntroductionContainer({super.key});

  void _launchImage() async {
    final Uri url = Uri.parse('/assets/images/ktm.jpg');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Link(
              uri: Uri.parse('/assets/images/ktm.jpg'),
              target: LinkTarget.blank, // Opens in a new tab
              builder: (BuildContext context, FollowLink? followLink) {
                return Image.asset(
                  'assets/images/ktm.jpg',
                  scale: 6,
                );
              },
            ),
          ),
          const Text(
              'Olen Janne Niinisalo Seinäjoelta! Tech-geek, motoristi, jne'),
        ],
      ),
    );
  }
}
