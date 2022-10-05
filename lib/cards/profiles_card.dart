import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../onHoverButton.dart';

class ProfilesCard extends StatelessWidget {
  const ProfilesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 80,
        width: 500,
        // color: Colors.red,
        child: Card(
          elevation: 10,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Profiles:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                OnHoverButton(
                  child: GestureDetector(
                    onTap: linkedinUrl,
                    child: Image.asset('assets/LinkedIn.png'),
                  ),
                ),
                SizedBox(width: 10),
                OnHoverButton(
                  child: GestureDetector(
                    onTap: twitterUrl,
                    child: Image.asset('assets/Twitter.png'),
                  ),
                ),
                SizedBox(width: 10),
                OnHoverButton(
                  child: GestureDetector(
                    onTap: gitHubUrl,
                    child: Image.asset('assets/GitHub.png'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

linkedinUrl() async {
  const url = 'https://www.linkedin.com/in/huzaifak08/';

  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}

twitterUrl() async {
  const url = 'https://twitter.com/huzaifak_08';

  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}

gitHubUrl() async {
  const url = 'https://github.com/huzaifak08';

  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}
