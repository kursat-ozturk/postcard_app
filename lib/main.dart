import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffD7E0FF), //#D7E0FF
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade800,
          title: const Text('Mutlu Bayramlar!'),
        ),
        body: Center(
          child: Image.asset('images/mutlu_bayramlar.jpg'),
        ),
      ),
    ),
  ));
}
