import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/inherited_widgets_demo/counter_inherited_widget.dart';
import 'package:flutter_application_1/screens/inherited_widgets_demo/my_counter.dart';

class Widget3 extends StatelessWidget {
  const Widget3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MyCounter myCounter = CounterIngeritedWidget.of(context)!.myCounter;
    return Text(
      'Widget 3: ${myCounter.counter}',
      style: const TextStyle(fontSize: 24.0),
    );
  }
}
