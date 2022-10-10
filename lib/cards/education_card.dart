import 'package:flutter/material.dart';

class EducationCard extends StatelessWidget {
  const EducationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 240,
      // color: Colors.red,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(23)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 18, 12, 12),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.school,
                  ),
                  SizedBox(width: 12),
                  Text(
                    'Education:',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      buildHeading(
                          'Matric(2017)', 'MARKS: 76.9%', 'FEDERAL BOARD')
                    ],
                  ),
                  Column(
                    children: [
                      buildHeading(
                          'Intermediate(2019)', 'MARKS: 65.0%', 'FEDERAL BOARD')
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              buildHeading('Graduation(Continue...)', 'BS Computer Science',
                  'Comsats Wah Cantt')
            ],
          ),
        ),
      ),
    );
  }

  Widget buildHeading(String degree, String marks, String board) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            degree,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          marks,
          style: const TextStyle(fontSize: 13, color: Colors.grey),
        ),
        const SizedBox(height: 8),
        Text(
          board,
          style: const TextStyle(fontSize: 13, color: Colors.grey),
        ),
      ],
    );
  }
}
