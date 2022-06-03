import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebaseDemo/add_new_user.dart';
import 'package:flutter_application_1/firebaseDemo/display_user_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HOmePageState();
}

class _HOmePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Firebase CRUD Demo'),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddNewUser()));
              },
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 20.0),
              ))
        ],
      )),
      body: const DisplayUserDetails(),
    );
  }
}
