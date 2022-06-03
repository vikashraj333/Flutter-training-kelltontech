import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _uname = '';
  String _pwd = '';
  String _msg = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Form'),
      ),
      body: ListView(
        children: [
          Image.network(
              'https://media.istockphoto.com/vectors/success-logo-vector-id1180882238?k=20&m=1180882238&s=612x612&w=0&h=TELzlQoUq4BXsD4RqO6UBpsDehyV8Tm6bxc7v2FCZCs='),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'User Name',
                  hintText: 'Enter User Name',
                  icon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  )),
              onChanged: (value) => _uname = value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: TextField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter Password',
                icon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6.0),
                ),
              ),
              onChanged: (value) => _pwd = value,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _msg = 'user name : $_uname\nPassword: $_pwd';
                  });
                },
                child: const Text('Login'),
              ),
              const SizedBox(width: 20.0),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Clear'),
              )
            ],
          ),
          const SizedBox(height: 10.0),
          Center(
              child: Text(
            _msg,
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
          ))
        ],
      ),
    );
  }
}
