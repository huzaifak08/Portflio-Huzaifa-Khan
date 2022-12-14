import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    String description =
        "I am a Computer Science (CS) student from Comsats Wah.I am a Flutter App Mobile Developer . I am good at coding in PUTHON ,JAVA(POP+OOP+GUI) and C#(POP+OOP) also I am experienced in HTML & CSS. I want to get a part time job in order to gain more experience.";
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(children: [
          Container(
            width: 400,
            height: 320,
            // color: Colors.red,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(23)),
              elevation: 10,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/dp.jpg'),
                      radius: 60,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Huzaifa Khan',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      description,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w200,
                        color: Color.fromARGB(255, 175, 174, 174),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
