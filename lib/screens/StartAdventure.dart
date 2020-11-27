import 'package:envato_holigo_app/widgets/CustomButton.dart';
import 'package:envato_holigo_app/widgets/LogoImageTitle.dart';
import 'package:flutter/material.dart';

class StartAdventure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 50,
          bottom: 30,
        ),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 70,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  LogoImageTitle(
                      title: "Start your adventure",
                      body: "Enjoy the beautiful Memories and relax your heart",
                      image: 'assets/startadventure.png',
                      pageno: 3),
                ],
              ),
            ),
            CustomButton(
              title: "Next",
            ),
          ],
        ),
      ),
    );
  }
}
