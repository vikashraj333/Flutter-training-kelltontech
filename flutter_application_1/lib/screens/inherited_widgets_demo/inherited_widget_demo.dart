import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/inherited_widgets_demo/counter_inherited_widget.dart';
import 'package:flutter_application_1/screens/inherited_widgets_demo/my_counter.dart';
import 'package:flutter_application_1/screens/inherited_widgets_demo/widget_1.dart';
import 'package:flutter_application_1/screens/inherited_widgets_demo/widget_2.dart';
import 'package:flutter_application_1/screens/inherited_widgets_demo/widget_3.dart';

class InheritedCounterAppDemo extends StatefulWidget {
  const InheritedCounterAppDemo({Key? key}) : super(key: key);

  @override
  State<InheritedCounterAppDemo> createState() =>
      _InheritedCounterAppDemoState();
}

class _InheritedCounterAppDemoState extends State<InheritedCounterAppDemo> {
  var myCounter = MyCounter(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inherited Widget Demo')),
      body: CounterIngeritedWidget(
        myCounter: myCounter,
        childWidget: Column(
          children: [
            Widget1(),
            Divider(
              thickness: 10.0,
            ),
            Widget2(),
            Divider(
              thickness: 10.0,
            ),
            Widget3()
          ],
        ),
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
