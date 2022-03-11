import 'package:flutter/material.dart';

class CourseTile extends StatelessWidget {
  CourseTile({required this.text, required this.image});
  String text,image;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        height: 110,
        width: 1000,
        padding: EdgeInsets.all(10.0),

        child: Text(text,
          style: TextStyle(
              fontSize: 50,
              color: Colors.white
          ),) ,
        decoration: BoxDecoration(
          color: Color(0xff0b0f14),
          image: DecorationImage(
            image:AssetImage(image),
            fit:BoxFit.cover,
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF000000),
              offset: const Offset(
                5.0,
                5.0,
              ),
              blurRadius: 10.0,
              spreadRadius: 2.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],// button text
        )
    );
  }
}