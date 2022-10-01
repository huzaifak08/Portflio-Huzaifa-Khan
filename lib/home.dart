import 'package:flutter/material.dart';
import 'package:hk_potfolio/cards/certificates_card.dart';
import 'package:hk_potfolio/cards/contact_card.dart';
import 'package:hk_potfolio/cards/education_card.dart';
import 'package:hk_potfolio/cards/image_card.dart';
import 'package:hk_potfolio/cards/profiles_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ImageCard(), // Image Card
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContactCard(), // Contact Card
                SizedBox(width: 23),
                EducationCard() // Education Card
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CertficateCard(), // Certificate Card
              ProfilesCard(), // Profile Card
            ],
          ),
          SizedBox(height: 12),
        ],
      ),
    );
  }
}
