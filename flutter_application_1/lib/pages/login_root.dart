import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/foundation/key.dart';

import 'login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'welcome_page.dart';

enum authorization { notloggedin, loggedin }

class LoginRoot extends StatefulWidget {
  final String routename = '/';
  const LoginRoot({Key? key}) : super(key: key);

  @override
  State<LoginRoot> createState() => _LoginRootState();
}

class _LoginRootState extends State<LoginRoot> {
  authorization _authStatus = authorization.notloggedin;
  @override
  Widget build(BuildContext context) {
    Widget retVal;
    switch (_authStatus) {
      case authorization.notloggedin:
        retVal = LoginScreen();
        break;

      case authorization.loggedin:
        retVal = WelcomePage();
        break;
    }
    return retVal;
  }
}
