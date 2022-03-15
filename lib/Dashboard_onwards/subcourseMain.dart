import 'package:flutter/material.dart';


class DropPage extends StatelessWidget {
  const DropPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('B.Tech')),
      body: DropdownPage()
    );
  }
}


class DropdownPage extends StatefulWidget {
  const DropdownPage({Key? key}) : super(key: key);

  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {

  bool _isVisible = false;
  String dropdownValue = 'Computer Science';
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Container(
              width: 1000,
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color(0xFF58bee6)
                )
              ),
              child: DropdownButton<String>(

              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Color(0xFF58bee6)),
              underline: Container(
                height: 2,
                color: Colors.blue,
              ),
              hint:Text("Select Subcourse"),
              isExpanded: true,
              onChanged: (String? newValue) {
                setState(() {
                  _isVisible = true;
                  dropdownValue = newValue!;
                });
              },
              items: <String>['Computer Science', 'Civil', 'Automobile', 'Biotechnology', 'Electrical', 'Mechanical', 'Electronics' , 'Aeronautical']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
        ),
          ),
        Visibility(
          visible: _isVisible,
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, 'collegedetails');
            },
            child: Container(
              width: 1000,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background2.jpg"),
                  fit:BoxFit.cover,
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.9), BlendMode.dstATop),
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
                  ],
                ),
              height: MediaQuery.of(context).size.height * 0.7,
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20.0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.4 ,
                    color: Colors.blueAccent,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        "assets/six.jpg"
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Text('Computer Science Engineering',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Text("Total number of Colleges:- 2349",
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ),
          ),
        )
      ],
    ));
  }
}
