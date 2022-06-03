import 'package:flutter/material.dart';

class ColumnAppDemo extends StatelessWidget {
  const ColumnAppDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Widget demo'),
      ),
      body: Container(
          width: 400,
          color: Colors.yellow,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'Red',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    'Green',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Blue',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
