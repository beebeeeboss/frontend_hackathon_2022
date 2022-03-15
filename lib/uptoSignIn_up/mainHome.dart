import 'package:flutter/material.dart';
import 'dart:ui';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context ) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.jpg'), fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Welcome",
                      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "We dare to dream",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 350,
                      child: Image.asset("assets/four.png", fit: BoxFit.contain),
                    ),

                    MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: (){
                        Navigator.pushNamed(context, 'login');
                      },
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.blue
                        ),
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text("Sign In", style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18
                      ),),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                   MaterialButton(
                       minWidth: double.infinity,
                       height: 60,
                       onPressed: (){
                         Navigator.pushNamed(context, 'register');
                   },
                     color: Colors.blue,
                     elevation: 0,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(50)
                     ),
                     child: Text("Sign Up", style: TextStyle(
                         fontWeight: FontWeight.w600,
                         fontSize: 18
                     ),),
                   ),
                    SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        "By Logging in or Registering you have agreed to Terms and Conditions And Privacy Policy",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ),
        ),
    );
  }
}
