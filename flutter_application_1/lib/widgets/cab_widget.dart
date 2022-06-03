import 'package:flutter/material.dart';

class CabWidget extends StatelessWidget {
  const CabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            color: Colors.greenAccent,
            height: MediaQuery.of(context).size.height,
            child: const Center(
              child: Text(
                'Cab Page',
                style: TextStyle(color: Colors.black26, fontSize: 40.0),
              ),
            )),
      ],
    );
  }
}
