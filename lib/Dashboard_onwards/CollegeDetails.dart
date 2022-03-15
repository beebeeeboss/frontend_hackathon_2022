import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:ui';

class CollegeDetails extends StatefulWidget {
  const CollegeDetails({Key? key}) : super(key: key);
  @override
  State<CollegeDetails> createState() => _CollegeDetailsState();
}

class _CollegeDetailsState extends State<CollegeDetails> {
  bool value = false;
  bool value2 = false;
  bool value3 = false;
  List<dynamic> list2 = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Computer Science Engineering"),
        backgroundColor: Color(0xFF906CBA),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                CheckboxListTile(
                  title: Text("NBA Evaluation"),
                  activeColor: Colors.red,
                  checkColor: Colors.red,
                  value: value3,
                  onChanged: (newValue3) {
                    setState(() {
                      value3 = newValue3!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                ),
                CheckboxListTile(
                  title: Text("NBA Evaluation"),
                  activeColor: Colors.red,
                  checkColor: Colors.red,
                  value: value3,
                  onChanged: (newValue3) {
                    setState(() {
                      value3 = newValue3!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                ),
                CheckboxListTile(
                  title: Text("NBA Evaluation"),
                  activeColor: Colors.red,
                  checkColor: Colors.red,
                  value: value3,
                  onChanged: (newValue3) {
                    setState(() {
                      value3 = newValue3!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
                ),
                SizedBox(
                  height: 10,
                ),
                
              ],
            ),
          ),
          Container(
            child: Flexible(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return _getTile(index: index ,context: context);
                },
                itemCount: list2.length,

              ),
            ),
          ),
        ],
      ),
    );
  }



void fetchData() async{
  http.Response response1 = await http.get(Uri.parse('https://hackathon22.herokuapp.com/getall'));
  setState(() {
    list2 = jsonDecode(response1.body);
  });
 // http.Response response = await http.get(Uri.parse('https://hackathon22.herokuapp.com/getall'));
 // setState(() {
  //  list2 = jsonDecode(response.body);
  //});
}

TextButton _getTile({index : int , context : BuildContext}){
  return TextButton(
    onPressed: () {

    },
    child: Text(
      list2[index]['link'],
      textAlign: TextAlign.center,
      style: TextStyle(
          color: Colors.lightGreen,
          fontSize: 13),
    ),
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color(0xFFe6fff9)),

    ),
  );
}
}