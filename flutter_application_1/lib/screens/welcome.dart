import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.orangeAccent, Colors.lightGreenAccent]),
      ),
      child: const Text.rich(
        /* child: Text(
          'Welcome to Flutter World!...',
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.purple),
        ),*/
        TextSpan(text: 'Flutter ', style: TextStyle(fontSize: 30), children: [
          TextSpan(
            text: 'Rocks ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 30.0,
            ),
          ),
          TextSpan(
            text: '-Vikash ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.purple,
              fontSize: 34.0,
            ),
          ),
        ]),
      ),
    );
  }
}
