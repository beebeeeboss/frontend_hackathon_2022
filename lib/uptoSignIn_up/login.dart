import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  bool _isLoading = true;
  String _email = '' , _password = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/login.png'), fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'Welcome\nBack',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            onChanged: (text) => _email = text,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                            onChanged: (text) => _password = text,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 27, fontWeight: FontWeight.w700),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color(0xff4c505b),
                                child: IconButton(
                                    color: Colors.white,
                                    onPressed: () {
                                      signin();
                                    },
                                    icon: Icon(
                                      Icons.arrow_forward,
                                    )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'homemain');
                                },
                                child: Text(
                                  'Back to Home',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Color(0xff58bee6),
                                      fontSize: 13),
                                ),
                                style: ButtonStyle(),
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot Password',
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 13,
                                    ),
                                  )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void signin() async{
    if(_isLoading)
      Navigator.pushNamed(context, 'loadingcircle');
    if(_email.isNotEmpty && _password.isNotEmpty){
      http.Response response = await http.post(
          Uri.parse('https://hackathon22.herokuapp.com/signin'),
          body: <String , String>{
          'email' : _email ,
          'password' : _password ,
          }
      );
      setState(() {
        _isLoading = false;
      });

      if(response.body == 'true'){
        Navigator.pushNamedAndRemoveUntil(context, 'dashboardmain', ModalRoute.withName('dashboardmain'));
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Email or Password error"),
          ),
        );
      }
    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Please Fill all the fields"),
        ),
      );
    }
  }
}
