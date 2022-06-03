import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/State_Management_Demo/my_counter.dart';
import 'package:flutter_application_1/screens/State_Management_Demo/widget1.dart';
import 'package:flutter_application_1/screens/State_Management_Demo/widget2.dart';
import 'package:flutter_application_1/screens/State_Management_Demo/widget3.dart';

class LimitationOfSetStateDemo extends StatefulWidget {
  const LimitationOfSetStateDemo({Key? key}) : super(key: key);

  @override
  State<LimitationOfSetStateDemo> createState() =>
      _LimitationOfSetStateDemoState();
}

class _LimitationOfSetStateDemoState extends State<LimitationOfSetStateDemo> {
  var myCounter = MyCounter(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Limitations of setState Method'),
      ),
      body: Column(
        children: [
          const Widget1(),
          const Divider(
            thickness: 10.0,
          ),
          Widget2(myCounter: myCounter),
          const Divider(
            thickness: 10.0,
          ),
          Widget3(myCounter: myCounter)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            myCounter.increaseCount();
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
