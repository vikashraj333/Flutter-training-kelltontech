import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/firebaseDemo/add_user.dart';
import 'package:flutter_application_1/firebaseDemo/get_user_information.dart';
import 'package:flutter_application_1/firebaseDemo/home_page.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const FBFlutterApp());
}

class FBFlutterApp extends StatelessWidget {
  const FBFlutterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Adding Record to Firebase DB'),
      //   ),
      //   body: const GetUserInformation(),
      // ),
      // //    body: const AddUser(
      //        userName: 'Vikash',
      //        password: 'Chauhan',
      //       emailId: 'rajputvikash333@gmail.com'),
      //  ),
    );
  }
}

// class MyWidget extends StatefulWidget {
//   const MyWidget({Key? key}) : super(key: key);

//   @override
//   State<MyWidget> createState() => _MyWidgetState();
// }

// class _MyWidgetState extends State<MyWidget> {
//   bool isloggedin = false;
//   void initState() {
//     super.initState();
//     getScreen();
//   }

//   Future<void> getScreen() async {
//     SharedPreferences myPrefs = await SharedPreferences.getInstance();
//     dynamic userExists = myPrefs.getString('uname');
//     if (userExists == null) {
//       isloggedin = false;
//     } else {
//       isloggedin = true;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: isloggedin ? WelcomePage.routename : '/',
//       routes: {
//         '/': (context) => LoginScreen(),
//         WelcomePage.routename: (context) => WelcomePage()
//       },
//     );
//   }
// }

// Future main() async {
//   runApp(const MyWidget());
// }


 
/*Future main() async {
  runApp(const RestServicesDemoApp());
}

class RestServicesDemoApp extends StatelessWidget {
  const RestServicesDemoApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: BakeryApp());
  }
}*/


/*Future<void> main() async {
//? Ensure that plugin services are initialized so that availableCameras can be called
//before runApp
  WidgetsFlutterBinding.ensureInitialized();
//? Get the List of the available Cameras on the Device
  final cameras = await availableCameras();
//? Get a camera from the avaiable list of cameras
  final firstCamera = cameras.first;
  runApp(
    MaterialApp(
      theme: ThemeData.dark(),
      home: CameraApp(camera: firstCamera),
    ),
  );
}*/
/*class LocationApp extends StatelessWidget {
  const LocationApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GeoLocationScreen(),
    );
  }
}

void main() {
  runApp(const LocationApp());
}*/
/*Future main() async {
  //final store = Store<int>(counterReducer, initialState: 0);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => UserCart()),
    ],
    child: const SMDemos(),
  ));
}

class SMDemos extends StatelessWidget {
  const SMDemos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: ProductCatalog());
  }
}*/


/*class NavigationDemoApp extends StatelessWidget {
  const NavigationDemoApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: kBackgroundColor, elevation: 20),
        scaffoldBackgroundColor: Colors.blueGrey.shade100,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Twitter(),
        Registration.routeName: (context) => const Registration(),
      },
    );
  }
}*/

/*class MyNotesDbApp extends StatelessWidget {
  const MyNotesDbApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.blueGrey.shade900,
          appBarTheme:
              const AppBarTheme(color: kBackgroundColor, elevation: 10),
        ),
        home: const NotesPage());
  }
}*/
