import 'package:flutter/material.dart';

class SetStateDemo extends StatefulWidget {
  const SetStateDemo({Key? key}) : super(key: key);

  @override
  State<SetStateDemo> createState() => _SetStateDemoState();
}

class _SetStateDemoState extends State<SetStateDemo> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            'You have clicked buttom',
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
          Text(
            '$_counter times',
            style: const TextStyle(fontSize: 30, color: Colors.redAccent),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
          debugPrint('$_counter');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
