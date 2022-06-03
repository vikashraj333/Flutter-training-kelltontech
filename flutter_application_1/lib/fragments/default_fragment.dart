import 'package:flutter/material.dart';
import 'package:flutter_application_1/drawers/create_drawer.dart';
import 'package:flutter_application_1/utiles/constants.dart';

class DefaultFragment extends StatelessWidget {
  static const String routeName = '/home';
  const DefaultFragment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bookings App'),
      ),
      body: Container(
        color: kBackgroundColor,
        child: const Center(
          child: Text(
            'Booking Made Easy...',
            style: klabelLargeTextStyle,
          ),
        ),
      ),
      drawer: CreateDrawer(),
    );
  }
}
