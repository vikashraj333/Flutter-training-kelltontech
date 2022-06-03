import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/cab_widget.dart';
import 'package:flutter_application_1/widgets/flight_widget.dart';
import 'package:flutter_application_1/widgets/hotel_widget.dart';

class BookingBottomNavApp extends StatefulWidget {
  const BookingBottomNavApp({Key? key}) : super(key: key);

  @override
  State<BookingBottomNavApp> createState() => _BookingBottomNavAppState();
}

class _BookingBottomNavAppState extends State<BookingBottomNavApp> {
  static int _currentIndex = 0;
  final tab_widgets = const [
    HotelWidget(),
    FlightWidget(),
    CabWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.emoji_transportation),
        title: const Text('Booking App'),
      ),
      body: tab_widgets[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedFontSize: 24,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.hotel), label: 'Hotels'),
          BottomNavigationBarItem(icon: Icon(Icons.flight), label: 'Flights'),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_car), label: 'Cabs'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
