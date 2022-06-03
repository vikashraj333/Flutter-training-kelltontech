import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/page2.dart';
import 'package:flutter_application_1/utiles/constants.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        leading: const Icon(Icons.paragliding),
        backgroundColor: kCardActiveBackground,
        title: const Text('Page 1'),
      ),
      body: const Center(
        child: Text(
          'Welcome to page 1',
          style: klabelLargeTextStyle,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
