import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/npage2.dart';
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
        onPressed: () async {
          var navigationResult = await Navigator.push(
              context, MaterialPageRoute(builder: (context) => const Page2()));

          if (navigationResult != null) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                  title: const Text('Result\n'),
                  content: Text('Data Recieved : \n$navigationResult')),
            );
          } else {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Text('Navigation Done using Back button on AppBar'),
              ),
            );
          }
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
