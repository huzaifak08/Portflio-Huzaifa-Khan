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
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.phone,
                    size: 18,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 12),
                  buildInfo('PHONE:', '+92 340 1690149')
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    size: 18,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 12),
                  buildInfo('EMAIL:', 'hk7928042@gmail.com')
                ],
              ),
              SizedBox(height: 20),
              buildHeading('Residentian Info.'),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(
                    Icons.flag,
                    size: 18,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 12),
                  buildInfo('NATIONALITY:', 'PAKISTANI'),
                ],
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Icon(
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
        style: TextStyle(
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
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
        SizedBox(width: 12),
        Text(
          info,
          style: TextStyle(
            fontSize: 13,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
