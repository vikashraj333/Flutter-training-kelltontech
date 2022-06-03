import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/inherited_widgets_demo/my_counter.dart';

class CounterIngeritedWidget extends InheritedWidget {
  final MyCounter myCounter;
  final Widget childWidget;
  const CounterIngeritedWidget(
      {Key? key, required this.myCounter, required this.childWidget})
      : super(key: key, child: childWidget);

  @override
  bool updateShouldNotify(covariant CounterIngeritedWidget oldWidget) {
    return myCounter != oldWidget.myCounter;
  }

  static CounterIngeritedWidget? of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType(aspect: CounterIngeritedWidget);
}
