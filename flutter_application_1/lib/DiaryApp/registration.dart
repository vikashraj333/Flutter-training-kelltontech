import 'package:flutter/material.dart';
import 'package:flutter_application_1/DiaryApp/login_page.dart';

class Registration extends StatefulWidget {
  static const String routeName = '/register';
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  var unameController = TextEditingController();
  var passwdController = TextEditingController();
  var emailController = TextEditingController();
  var mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
      ),
      body: ListView(
        children: [
          Image.network(
            'https://media.istockphoto.com/photos/close-up-woman-hand-writing-on-notebook-picture-id1035462384?k=20&m=1035462384&s=612x612&w=0&h=sQGYRJdWsXuO1n16dB8-fU62xu1Ojjy4xhbEDxAga1c=',
            width: 300,
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              createTextField(unameController, 'User Name'),
              createTextField(passwdController, 'Password', isSecured: true),
              createTextField(emailController, 'Email Id',
                  keyboard: TextInputType.emailAddress),
              createTextField(mobileController, 'Mobile No',
                  keyboard: TextInputType.phone),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Register')),
            ]),
          ),
        ],
      ),
    );
  }

  TextField createTextField(TextEditingController editController, String text,
      {TextInputType keyboard = TextInputType.text, bool isSecured = false}) {
    return TextField(
      controller: editController,
      obscureText: isSecured,
      decoration: InputDecoration(labelText: text, hintText: 'Enter $text'),
      keyboardType: keyboard,
      style: Theme.of(context).textTheme.bodyText1,
    );
  }
}
