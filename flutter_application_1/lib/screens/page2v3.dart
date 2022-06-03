import 'package:flutter/material.dart';
import 'package:flutter_application_1/utiles/constants.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kCardActiveBackground,
        title: const Text('Page 2'),
      ),
      body: const Center(
        child: Text(
          'Welcome to page 2',
          style: klabelLargeTextStyle,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
