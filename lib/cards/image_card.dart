import 'package:flutter/material.dart';

import '../onHoverButton.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    String description =
        "I am a Computer Science (CS) student from Comsats Wah.I am a Flutter App Mobile Developer . I am good at coding in Flutter ,JAVA(POP+OOP+GUI) and C#(POP+OOP) also I have experience of 6 months in Flutter. I want to get a part time job in order to gain more experience.";
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
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return DetailScreen();
                        }));
                      },
                      child: const OnHoverButton(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/dp.jpg'),
                          radius: 60,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Huzaifa Khan',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
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

class DetailScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Container(
            height: 800,
            width: 450,
            child: Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.cancel)),
                Hero(
                  child: Image.asset(
                    'assets/dp.jpg',
                    // fit: BoxFit.cover,
                  ),
                  tag: 'imagehero',
                ),
              ],
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
