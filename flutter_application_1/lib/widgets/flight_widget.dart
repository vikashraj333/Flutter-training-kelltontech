import 'package:flutter/material.dart';

class FlightWidget extends StatelessWidget {
  const FlightWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            color: Colors.blueAccent,
            height: MediaQuery.of(context).size.height,
            child: const Center(
              child: Text(
                'Flight Page',
                style: TextStyle(color: Colors.red, fontSize: 40.0),
              ),
            )),
      ],
    );
  }
}
