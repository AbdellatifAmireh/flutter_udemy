import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_udemy/photoHero.dart';

import 'secondPage.dart'; //s

// TODO ZASDFDSF ASDF  SADF A DTOD
//  SAZZZZF

class MyImages extends StatelessWidget {
  const MyImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    timeDilation = 1.0; // 1.0 means normal animation speed.
    return Column(
      children: <Widget>[
        PhotoHero(
          photo: 'images/lake.jpg',
          width: 300.0,
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute<void>(builder: (BuildContext context) {
              return Scaffold(
                appBar: AppBar(
                  title: const Text('Flippers Page'),
                ),
                body: Container(
                  // The blue background emphasizes that it's a new route.
                  color: Colors.lightBlueAccent,
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.topLeft,
                  child: PhotoHero(
                    photo: 'images/lake.jpg',
                    width: 500.0,
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              );
            }));
          },
        ),
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRoute()),
              );
            }, // Image tapped
            child: Image.asset(
              'images/lake.jpg',
              fit: BoxFit.cover,
            ),
          ),
          margin: const EdgeInsets.only(bottom: 10, top: 10),
          //margin: const EdgeInsets.all(10.0),
        ),
        Container(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondRoute()),
              );
            }, // Image tapped
            child: Hero(
              tag: 'test123',
              child: Image.asset(
                'images/lake.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          margin: const EdgeInsets.only(bottom: 10, top: 10),
          //margin: const EdgeInsets.all(10.0),
        ),
        InkWell(
          radius: 50.0,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),
            );
          }, // Image tapped
          /* child: Ink.image(
                fit: BoxFit.cover, // Fixes border issues
                //width: 100,
                //height: 100,
                image: const AssetImage(
                  'images/lake.jpg',
                ),
              ), */
          child: Image.asset(
            'images/lake.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
