import 'package:flutter/material.dart';
import 'coursetile.dart';

class DashboardMain extends StatefulWidget {
  const DashboardMain({Key? key}) : super(key: key);

  @override
  State<DashboardMain> createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 160.0,
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Color(0xFF58bee6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100.0),
                  bottomRight: Radius.circular(100.0),
                )
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Hi Chahat!',
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Find College via Course',
                            style: TextStyle(
                              fontFamily: 'Rubik',
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                      CircleAvatar(
                        radius: 42,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/one.png'),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              child: Column(
                children: [
                  GestureDetector(
                      child:CourseTile(text: "Btech", image: "assets/background.jpg"),
                      onTap:(){
                  }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Btech", image: "assets/background2.jpg"),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Btech", image: "assets/background.jpg"),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Btech", image: "assets/background2.jpg"),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Btech", image: "assets/background.jpg"),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Btech", image: "assets/background2.jpg",),
                      onTap:(){
                      }
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}







