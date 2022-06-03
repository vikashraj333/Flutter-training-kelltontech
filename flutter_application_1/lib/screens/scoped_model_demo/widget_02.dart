import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/scoped_model_demo/widget_03.dart';

class Widget2 extends StatelessWidget {
  const Widget2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Widget 2',
          style: TextStyle(fontSize: 24.0),
        ),
        Widget3(),
      ],
    );
  }
}
