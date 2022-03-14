import 'dart:convert';
import 'package:flutter/material.dart';
import 'coursetile.dart';
import 'searchcourse.dart';
import 'package:http/http.dart' as http;

class DashboardMain extends StatefulWidget {
  const DashboardMain({Key? key}) : super(key: key);

  @override
  State<DashboardMain> createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  List<dynamic> list = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
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
                      child: SearchCourse(changeTilesAccordingToSearchedText))
                ],
              ),
            ),

          SizedBox(
            height: 5.0,
          ),
          Container(
            child: Flexible(
              child: ListView.builder(
                  itemBuilder: (context, index) {
                     return _getTile(index: index);
                  },
                   itemCount: list.length,

                  ),
            ),
          )
        ],
      ),
    );
  }

  void fetchData() async{
    http.Response response = await http.get(Uri.parse('https://hackathon22.herokuapp.com/getall'));

    setState(() {
        list = jsonDecode(response.body);
      });
  }

  GestureDetector _getTile({index : int}){
   // List<GestureDetector> iList = [];

      //iList.add(
       return   GestureDetector(
              child:CourseTile(text: list[index]['name'], text2: list[index]['degree'],  image: "assets/background2.jpg"),
              onTap:(){
                Navigator.pushNamed(context, 'subcoursemain');
              }
          );
      //);
    //}

  }

  void changeTilesAccordingToSearchedText(String text){
    if(text.isNotEmpty) {
      List<dynamic> newList = [];
       for (var jsonObject in list){
         if(jsonObject['name'].toString().contains(text))
           newList.add(jsonObject);
       }

       setState(() {
         list = newList;
       });
    }
    else{
      fetchData();
    }
  }
}

