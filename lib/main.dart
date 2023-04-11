import 'dart:math';

import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //declare confettiController;
  late ConfettiController _centerController;

  @override
  void initState() {
    super.initState();

    //initialize confettiController
    _centerController =
        ConfettiController(duration: const Duration(seconds: 10));
  }

  @override
  void dispose() {
    //dispose the controller
    _centerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mutlu Bayramlar"),
          backgroundColor: Colors.blueGrey,
          centerTitle: true,
        ),
        backgroundColor: const Color(0xffd7e0ff),
        body: SafeArea(
          child: Stack(
            children: [
              Center(child: Image.asset('images/mutlu_bayramlar.jpg')),
              Align(
                alignment: Alignment.center,
                child: ConfettiWidget(
                  confettiController: _centerController,
                  blastDirection: pi / 2,
                  maxBlastForce: 5,
                  minBlastForce: 1,
                  emissionFrequency: 0.03,

                  // 10 paticles will pop-up at a time
                  numberOfParticles: 10,

                  //particles will pop-up
                  gravity: 0,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    //invoking confettiController to come into play
                    _centerController.play();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Colors.blueGrey,
                    ),
                  ),
                  child: const Text(
                    'Kutla!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
