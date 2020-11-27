import 'package:envato_holigo_app/widgets/CustomButton.dart';
import 'package:flutter/material.dart';

import 'FindAmazingPlace.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          vertical: 30,
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.center,
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/welcome.png',
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 70,
                vertical: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Plan your trip and explore your favourite destinations with us",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            CustomButton(
              title: "Get Started",
              goto: FindAmazingPlace(),
            ),
          ],
        ),
      ),
    );
  }
}
