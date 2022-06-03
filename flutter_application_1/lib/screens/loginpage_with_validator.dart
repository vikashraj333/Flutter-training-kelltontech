import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController unameController = TextEditingController();
  TextEditingController passwdController = TextEditingController();
  String _message = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Form'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Image.network(
              'https://media.istockphoto.com/vectors/success-logo-vector-id1180882238?k=20&m=1180882238&s=612x612&w=0&h=TELzlQoUq4BXsD4RqO6UBpsDehyV8Tm6bxc7v2FCZCs=',
              width: 200,
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: unameController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'User name',
                  hintText: 'Enter User name',
                  icon: const Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "User name cant be blank";
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: passwdController,
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password cant be blank";
                  }
                  return null;
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_formKey.currentState!.validate()) {
                        var uname = unameController.text;
                        var passwd = passwdController.text;
                        _message = "User name : $uname\nPassword : $passwd";
                      }
                    });
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      unameController.text =
                          passwdController.text = _message = '';
                    });
                  },
                  child: const Text('Clear'),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Center(
              child: Text(
                _message,
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
