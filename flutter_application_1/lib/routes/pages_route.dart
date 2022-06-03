import 'package:flutter_application_1/fragments/cab_fragment.dart';
import 'package:flutter_application_1/fragments/default_fragment.dart';
import 'package:flutter_application_1/fragments/flight_fragment.dart';
import 'package:flutter_application_1/fragments/hotel_fragment.dart';

class PageRoutes {
  static const String home = DefaultFragment.routeName;
  static const String hotel = HotelFragment.routeName;
  static const String flight = FlightFragment.routeName;
  static const String cab = CabFragment.routeName;
}
