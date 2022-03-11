import 'package:flutter/material.dart';
import 'coursetile.dart';
import 'searchcourse.dart';

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
              height: 210.0,
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Color(0xFF58bee6),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100.0),
                  bottomRight: Radius.circular(100.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x9F00000F),
                    offset: const Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 20.0,
                    spreadRadius: 1.0,
                  ), //BoxShadow
                  BoxShadow(
                    color: Colors.white,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ],
              ),
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
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
                        //CircleAvatar(
                        //  radius: 32,
                         // backgroundColor: Colors.white,
                         // child: CircleAvatar(
                          //  radius: 30,
                         //   backgroundImage: AssetImage('assets/one.png'),
                          //),
                       // ),
                      ],
                    ),
                    Positioned(
                     top: 120.0,
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: SearchCourse())
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
                      child:CourseTile(text: "Engineering", text2: "hii",  image: "assets/background2.jpg"),
                      onTap:(){
                        Navigator.pushNamed(context, 'subcoursemain');
                  }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Management", text2: "hii", image: "assets/background2.jpg"),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Commerce" , text2: "hii", image: "assets/background2.jpg"),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Arts" , text2: "hii", image: "assets/background2.jpg"),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Medical" , text2: "hii", image: "assets/background2.jpg"),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Design" , text2: "hii", image: "assets/background2.jpg",),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Science" , text2: "hii", image: "assets/background2.jpg",),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Pharmacy" , text2: "hii", image: "assets/background2.jpg",),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Pera medical" , text2: "hii", image: "assets/background2.jpg",),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Computer Application" , text2: "hii", image: "assets/background2.jpg",),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Agriculture" , text2: "hii", image: "assets/background2.jpg",),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Animation" , text2: "hii", image: "assets/background2.jpg",),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Architecture" , text2: "hii", image: "assets/background2.jpg",),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Hotel Management" , text2: "hii", image: "assets/background2.jpg",),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Mass Communication" , text2: "hii", image: "assets/background2.jpg",),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Law" , text2: "hii", image: "assets/background2.jpg",),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Dental" , text2: "hii", image: "assets/background2.jpg",),
                      onTap:(){
                      }
                  ),
                  GestureDetector(
                      child:CourseTile(text: "Vocational Courses" , text2: "hii", image: "assets/background2.jpg",),
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







