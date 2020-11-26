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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(
            vertical: 50,
          ),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/illustration.png',
              ),
            ),
          ),
          child: Column(
            children: [
              Column(
                children: [
                  Image(
                    image: AssetImage(
                      'assets/logo.png',
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    "WELCOME TO HOLIGO",
                    style: TextStyle(
                        // fontFamily: "NunitoSans-ExtraBold",
                        ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Plan your trip and explore your favourite destinations with us",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
