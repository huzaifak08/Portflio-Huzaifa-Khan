import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../onHoverButton.dart';

class CertficateCard extends StatelessWidget {
  const CertficateCard({super.key});

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
                const Text(
                  'Certificates:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 10),
                OnHoverButton(
                  child: GestureDetector(
                    onTap: cSharpUrl,
                    child: Image.asset(
                      'assets/c-sharp.png',
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                OnHoverButton(
                  child: GestureDetector(
                    onTap: sqlUrl,
                    child: Image.asset('assets/mysql.png'),
                  ),
                ),
                const SizedBox(width: 10),
                OnHoverButton(
                  child: GestureDetector(
                    onTap: flutterUrl,
                    child: Image.asset('assets/flutter.png'),
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

sqlUrl() async {
  const url =
      'https://www.coursera.org/account/accomplishments/certificate/7KJY85ZAZUFB';

  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrlString(url);
  } else {
    throw 'Cannot load $url';
  }
}

cSharpUrl() async {
  const url =
      'https://www.coursera.org/account/accomplishments/certificate/ETA6UPXSVJQ8';

  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrlString(url);
  } else {
    throw 'Cannot load $url';
  }
}

flutterUrl() async {
  const url = 'https://certificates.simplicdn.net/share/3796933_1663908257.pdf';

  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrlString(url);
  } else {
    throw 'Cannot load $url';
  }
}
