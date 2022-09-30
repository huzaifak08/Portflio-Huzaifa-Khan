import 'package:flutter/material.dart';
import 'package:hk_potfolio/contact_card.dart';
import 'package:hk_potfolio/education_card.dart';
import 'package:hk_potfolio/image_card.dart';

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
          )
        ],
      ),
    );
  }
}
