import 'package:flutter/material.dart';
import 'package:flutter_application_1/fragments/cab_fragment.dart';
import 'package:flutter_application_1/fragments/default_fragment.dart';
import 'package:flutter_application_1/fragments/flight_fragment.dart';
import 'package:flutter_application_1/fragments/hotel_fragment.dart';
import 'package:flutter_application_1/routes/pages_route.dart';

class BookingsDraweApp extends StatelessWidget {
  const BookingsDraweApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: PageRoutes.home,
      routes: {
        PageRoutes.home: (context) => const DefaultFragment(),
        PageRoutes.hotel: (context) => const HotelFragment(),
        PageRoutes.flight: (context) => const FlightFragment(),
        PageRoutes.cab: (context) => const CabFragment()
      },
    );
  }
}
