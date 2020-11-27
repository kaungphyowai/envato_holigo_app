import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final title;
  final Widget goto;
  CustomButton({@required this.title, this.goto});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return goto;
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 20,
        ),
        alignment: Alignment.bottomCenter,
        margin: EdgeInsets.symmetric(
          horizontal: 35,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 2),
              blurRadius: 43.0,
              color: Color(0xff092C4C).withOpacity(0.06),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            stops: [
              0.1,
              1.0,
            ],
            colors: [
              Color(0xffffcf57),
              Color(0xffffb600),
            ],
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
