import 'package:flutter/material.dart';

class LogoImageTitle extends StatelessWidget {
  final String image;
  final String title;
  final String body;
  final int pageno;
  LogoImageTitle({
    @required this.title,
    @required this.body,
    @required this.image,
    @required this.pageno,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(
            'assets/logo.png',
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Image(
          image: AssetImage(
            image,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          body,
          style: Theme.of(context).textTheme.bodyText2,
          textAlign: TextAlign.center,
        ),
        Container(
          margin: EdgeInsets.only(
            top: 20,
            right: 10,
            left: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 3,
                ),
                height: 5,
                width: pageno == 1 ? 20 : 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: pageno == 1
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).primaryColor.withOpacity(0.4),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 3,
                ),
                height: 5,
                width: pageno == 2 ? 20 : 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: pageno == 2
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).primaryColor.withOpacity(0.4),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 3,
                ),
                height: 5,
                width: pageno == 3 ? 20 : 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: pageno == 3
                      ? Theme.of(context).primaryColor
                      : Theme.of(context).primaryColor.withOpacity(0.4),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
