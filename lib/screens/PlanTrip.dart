import 'package:envato_holigo_app/widgets/LogoImageTitle.dart';
import 'package:flutter/material.dart';

import 'StartAdventure.dart';

class PlanTrip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 70,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return StartAdventure();
                      }));
                    },
                    child: LogoImageTitle(
                        title: "Planned your trip",
                        body:
                            "Select a destinationand start scheduling details for your trip",
                        image: 'assets/plantrip.png',
                        pageno: 2),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
