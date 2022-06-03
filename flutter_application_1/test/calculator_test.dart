import 'package:flutter_application_1/services/calulator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUpAll(() {
    print('All Initialization States for Groups can be added here');
  });

  tearDownAll(() {
    print('All Cleanup Tasks for Groups can be added here');
  });

  group('Testing the Calculator Service', () {
    test('Testing Add Method', () {
//? Step 1 : Create the instance for the class
      var calc = Calculator();

//? Step 2 : What Exactly we wanted to test
      int result = calc.add(10, 20);

//? Step 3 : What are we going to expect from the test
      expect(result, 30);
    });

    test('Testing Multiply Method', () {
//? Step 1 : Create the instance for the class
      var calc = Calculator();

//? Step 2 : What Exactly we wanted to test
      int result = calc.mul(10, 20);

//? Step 3 : What are we going to expect from the test
      expect(result, 200);
    });
  });
}
