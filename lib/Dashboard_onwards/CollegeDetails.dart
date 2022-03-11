import 'package:flutter/material.dart';

class CollegeDetails extends StatelessWidget {
  const CollegeDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Science Engineering"),
        backgroundColor: Color(0xFF906CBA),
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(
                  "assets/six.jpg"
              ),
            ),
          ),
        ],
      ),
    );
  }
}