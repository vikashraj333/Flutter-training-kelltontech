import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/scoped_model_demo/widget_02.dart';
import 'package:flutter_application_1/screens/scoped_model_demo/counter_model.dart';
import 'package:flutter_application_1/screens/scoped_model_demo/my_counter.dart';
import 'package:flutter_application_1/screens/scoped_model_demo/widget_01.dart';
import 'package:flutter_application_1/screens/scoped_model_demo/widget_03.dart';
import 'package:scoped_model/scoped_model.dart';

class ScopedModelDemo extends StatefulWidget {
  const ScopedModelDemo({Key? key}) : super(key: key);

  @override
  State<ScopedModelDemo> createState() => _ScopedModelDemoState();
}

class _ScopedModelDemoState extends State<ScopedModelDemo> {
  var myCounter = MyCounter(0);
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: CounterModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App Using ScopedModel'),
        ),
        body: Column(
          children: const [
            Widget1(),
            Divider(
              thickness: 10,
            ),
            Widget2(),
            Divider(
              thickness: 10,
            ),
            Widget3()
          ],
        ),
        floatingActionButton: ScopedModelDescendant<CounterModel>(
          builder: (context, child, model) => FloatingActionButton(
            onPressed: () {
              model.add();
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
