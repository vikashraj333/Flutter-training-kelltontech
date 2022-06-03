import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user_info.dart';

class UserDetailsScreen extends StatelessWidget {
  const UserDetailsScreen({Key? key}) : super(key: key);

  static const String routeName = '/UserDetails';

  @override
  Widget build(BuildContext context) {
    final UserInfo uinfo =
        ModalRoute.of(context)!.settings.arguments as UserInfo;
    return Scaffold(
      appBar: AppBar(
        title: Text('${uinfo.userName} details'),
      ),
      body: SizedBox(
        width: 500,
        height: 200,
        child: Card(
          elevation: 20,
          color: Colors.blueAccent,
          child: Column(
            children: [
              Row(
                children: [
                  const Text('User name : '),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(uinfo.userName),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  const Text('Password : '),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(uinfo.password),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  const Text('Email ID : '),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(uinfo.emailId),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  const Text('Mobile No : '),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(uinfo.mobileNo),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
