import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomePage extends StatefulWidget {
  static String routename = '/welcome';
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String? _uname, _passwd;

  @override
  void initState() {
    super.initState();
    getValues();
  }

  Future<void> getValues() async {
    SharedPreferences myPrefs = await SharedPreferences.getInstance();
    setState(() {
      _uname = myPrefs.getString('uname');
      _passwd = myPrefs.getString('passwd');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Using Shared Preferennces'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Welcome $_uname',
                style: const TextStyle(fontSize: 24.0),
              ),
              const SizedBox(height: 10.0),
              Text('Your Password is : $_passwd'),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () async {
                  SharedPreferences myPrefs =
                      await SharedPreferences.getInstance();
                  myPrefs.setString('uname', '');
                  myPrefs.setString('passwd', '');
                },
                child: const Text('Logout'),
              )
            ],
          ),
        ));
  }
}
