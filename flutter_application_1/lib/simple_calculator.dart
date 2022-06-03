import 'package:flutter/material.dart';
import 'package:flutter_application_1/services/calulator.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  TextEditingController no1Controller = TextEditingController();
  TextEditingController no2Controller = TextEditingController();
  TextEditingController resultController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Simple Calculator'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            TextField(
              controller: no1Controller,
              decoration: const InputDecoration(
                  labelText: 'Enter No1', hintText: 'Enter Value for No1'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: no2Controller,
              decoration: const InputDecoration(
                  labelText: 'Enter No2', hintText: 'Enter Value for No2'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: resultController,
              enabled: false,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var service = Calculator();
                      int no1 = int.parse(no1Controller.text);
                      int no2 = int.parse(no2Controller.text);
                      resultController.text = service.add(no1, no2).toString();
                    });
                  },
                  child: const Text('Add'),
                ),
                const SizedBox(width: 10.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var service = Calculator();
                      int no1 = int.parse(no1Controller.text);
                      int no2 = int.parse(no2Controller.text);
                      resultController.text = service.mul(no1, no2).toString();
                    });
                  },
                  child: const Text('Multiply'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
