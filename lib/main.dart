import 'package:envato_holigo_app/screens/WelcomScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffF2613C),
        textTheme: TextTheme(
          headline5: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 28,
            // color: Colors.red,
            color: Color(0xff092c4c),
          ),
          bodyText1: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 24,
            // color: Colors.red,
            color: Color(0xff092c4c),
          ),
          bodyText2: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15,
            letterSpacing: 0.28,
            // color: Colors.red,
            color: Color(0xff092c4c),
          ),
        ),
        fontFamily: 'NunitoSans',
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
