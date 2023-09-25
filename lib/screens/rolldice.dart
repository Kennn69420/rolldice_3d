import 'dart:math';
import 'package:flutter/material.dart';

class Rolldice_Screen extends StatefulWidget {
  Rolldice_Screen({super.key});

  @override
  State<Rolldice_Screen> createState() => _Rolldice_ScreenState();
}

class _Rolldice_ScreenState extends State<Rolldice_Screen> {
  int activeDiceFace = 6;

  List<String> diceImages = [
    'https://upload.wikimedia.org/wikipedia/commons/2/2c/Alea_1.png',
    'https://upload.wikimedia.org/wikipedia/commons/b/b8/Alea_2.png',
    'https://upload.wikimedia.org/wikipedia/commons/2/2f/Alea_3.png',
    'https://upload.wikimedia.org/wikipedia/commons/8/8d/Alea_4.png',
    'https://upload.wikimedia.org/wikipedia/commons/5/55/Alea_5.png',
    'https://upload.wikimedia.org/wikipedia/commons/f/f4/Alea_6.png',
    'https://media.tenor.com/i_L5KauoCcoAAAAi/dice.gif',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.yellow,
                Colors.blue,
              ],
            ),
          ),
          child: Center(
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              const Text(
                'Roll',
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(child: Image.network(diceImages[activeDiceFace])),
              TextButton(
                onPressed: () {
                  print('button was pressed');
                  var randNum = Random().nextInt(6);

                  setState(() {
                    activeDiceFace = randNum;
                  });
                },
                child: const Text(
                  'press me',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Text('hello'),
            ]),
          )),
    );
  }
}
