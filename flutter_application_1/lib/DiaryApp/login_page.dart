import 'package:flutter/material.dart';
import 'package:flutter_application_1/DiaryApp/diary_database.dart';
import 'package:flutter_application_1/DiaryApp/registration.dart';
import 'package:flutter_application_1/DiaryApp/user_details.dart';

class LoginScreenDiary extends StatefulWidget {
  static const String routeName = '/LoginPage';
  const LoginScreenDiary({Key? key}) : super(key: key);
  @override
  State<LoginScreenDiary> createState() => _LoginScreenDiaryState();
}

class _LoginScreenDiaryState extends State<LoginScreenDiary> {
  TextEditingController unameController = TextEditingController();
  TextEditingController passwdController = TextEditingController();
  String _message = '';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.network(
            'https://image.winudf.com/v2/image1/Y29tLnNhdHVybi5teWNyZWF0aXZlZGlhcnlfaWNvbl8xNTQ2ODA4OTI0XzAxNg/icon.png?w=&fakeurl=1'),
        title: const Text('Diary App'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Image.network(
              'https://media.istockphoto.com/photos/close-up-woman-hand-writing-on-notebook-picture-id1035462384?k=20&m=1035462384&s=612x612&w=0&h=sQGYRJdWsXuO1n16dB8-fU62xu1Ojjy4xhbEDxAga1c=',
              width: 300,
              height: 250,
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    var username = unameController.text;
                    var password = passwdController.text;
                    var result = await AppDiaryDatabase.instance
                        .validateUser(username, password);
                    if (result) {
                      //Code to navigate for success page
                    } else {
                      //Raise an alert
                    }
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('New User? '),
                    const SizedBox(
                      width: 20,
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        var username = unameController.text;
                        var password = passwdController.text;
                        var appUser =
                            AppUser(userName: username, password: password);
                        var result = await AppDiaryDatabase.instance
                            .registerUser(appUser);
                        if (result) {
                          //Code to navigate for success page
                        } else {
                          //Raise an alert
                        }
                      },
                      child: const Text('Register'),
                    ),
                  ],
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
