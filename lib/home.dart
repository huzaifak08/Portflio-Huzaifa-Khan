import 'package:flutter/material.dart';
import 'package:hk_potfolio/cards/certificates_card.dart';
import 'package:hk_potfolio/cards/contact_card.dart';
import 'package:hk_potfolio/cards/education_card.dart';
import 'package:hk_potfolio/cards/image_card.dart';
import 'package:hk_potfolio/cards/profiles_card.dart';
import 'package:hk_potfolio/cards/theme_card.dart';
import 'package:hk_potfolio/responsive.dart';
import 'package:hk_potfolio/theme_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const ImageCard(), // Image Card
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Responsive.isDesktop(context)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ContactCard(), // Contact Card
                      ThemeCard(),
                      EducationCard() // Education Card
                    ],
                  )
                : Column(
                    children: const [
                      ContactCard(),
                      ThemeCard(),
                      EducationCard(),
                    ],
                  ),
          ),
          Responsive.isDesktop(context)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    CertficateCard(), // Certificate Card
                    ProfilesCard(), // Profile Card
                  ],
                )
              : Column(
                  children: const [
                    CertficateCard(),
                    ProfilesCard(),
                  ],
                ),
        ],
      ),
    );
  }
}
