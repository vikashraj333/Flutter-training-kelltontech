import 'package:flutter/material.dart';

class HotelWidget extends StatelessWidget {
  const HotelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            color: Colors.amber,
            child: const Center(
              child: Text(
                'Hotel Page',
                style: TextStyle(color: Colors.purple, fontSize: 40.0),
              ),
            )),
      ],
    );
  }
}
