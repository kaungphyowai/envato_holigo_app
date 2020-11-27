import 'package:envato_holigo_app/screens/PlanTrip.dart';
import 'package:envato_holigo_app/widgets/LogoImageTitle.dart';
import 'package:flutter/material.dart';

class FindAmazingPlace extends StatelessWidget {
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
                  LogoImageTitle(
                    image: 'assets/findamazingplace.png',
                    title: 'Find an amazing place',
                    body:
                        'Explore your favourite destinations with us around the world',
                    pageno: 1,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 85.6,
                      bottom: 32,
                    ),
                    child: Image(
                      image: AssetImage('assets/gesture.png'),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PlanTrip();
                      }));
                    },
                    child: Text(
                      'Slide to learn more',
                      style: Theme.of(context).textTheme.bodyText2.apply(
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
