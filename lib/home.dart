import 'package:flutter/material.dart';
import 'package:hk_potfolio/cards/certificates_card.dart';
import 'package:hk_potfolio/cards/contact_card.dart';
import 'package:hk_potfolio/cards/education_card.dart';
import 'package:hk_potfolio/cards/image_card.dart';
import 'package:hk_potfolio/cards/profiles_card.dart';
import 'package:hk_potfolio/responsive.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            ImageCard(), // Image Card
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Responsive.isDesktop(context)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ContactCard(), // Contact Card
                        EducationCard() // Education Card
                      ],
                    )
                  : Column(
                      children: [
                        ContactCard(),
                        EducationCard(),
                      ],
                    ),
            ),
            Responsive.isDesktop(context)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CertficateCard(), // Certificate Card
                      ProfilesCard(), // Profile Card
                    ],
                  )
                : Column(
                    children: [
                      CertficateCard(),
                      ProfilesCard(),
                    ],
                  ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
