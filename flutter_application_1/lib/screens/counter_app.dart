import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.calculate),
        title: const Text('Counter App'),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.lightGreenAccent])),
        //color: Colors.lightBlueAccent,
        child: Center(
          child: Text(
            'You have Clicked $_counter times',
            style: const TextStyle(fontSize: 30.0),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _counter++;
              });
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 20.0,
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                _counter--;
              });
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.purpleAccent,
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0
            // color: Colors.lightBlueAccent,
            ),
      ),
    );
  }
}
