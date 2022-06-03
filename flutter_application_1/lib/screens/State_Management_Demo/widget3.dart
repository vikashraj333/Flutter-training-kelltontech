import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/State_Management_Demo/my_counter.dart';

class Widget3 extends StatelessWidget {
  final MyCounter myCounter;
  const Widget3({Key? key, required this.myCounter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Widget 3: ${myCounter.counter}',
      style: const TextStyle(fontSize: 24.0),
    );
  }
}
