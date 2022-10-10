import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 240,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 18, 12, 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildHeading('Contact:'),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(
                    Icons.phone,
                    size: 18,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 12),
                  buildInfo('PHONE:', '+92 340 1690149')
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(
                    Icons.email,
                    size: 18,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 12),
                  buildInfo('EMAIL:', 'hk7928042@gmail.com')
                ],
              ),
              const SizedBox(height: 20),
              buildHeading('Residentian Info.'),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(
                    Icons.flag,
                    size: 18,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 12),
                  buildInfo('NATIONALITY:', 'PAKISTANI'),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Icon(
                    Icons.location_city,
                    size: 18,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 12),
                  buildInfo('CITY:', 'ISLAMABAD'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeading(String text) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildInfo(String text, String info) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
        const SizedBox(width: 12),
        Text(
          info,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
