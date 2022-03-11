import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  String _name = '' , _email = '' , _phoneNo = '' , _password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 80),
              child: Text(
                'Sign Up',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),

            SingleChildScrollView(
              child: Column(
                children: [

                  Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.02 ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 35, right: 35),
                          child: Column(
                            children: [
                              SizedBox(height: 150,),
                              TextField(
                                style: TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "Name",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                onChanged: (text) => _name = text,
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextField(
                                style: TextStyle(),

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
                                height: 40,
                              ),
                              TextField(
                                style: TextStyle(),

                                decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "Phone Number",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                onChanged: (text) => _phoneNo = text,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              TextField(
                                style: TextStyle(),
                                decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    filled: true,
                                    hintText: "Password",
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    )),
                                onChanged: (text) => _password = text ,
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Sign up',
                                    style: TextStyle(
                                        fontSize: 25, fontWeight: FontWeight.w700),
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xff4c505b),
                                    child: IconButton(
                                        color: Colors.white,
                                        onPressed: () {
                                          signup();
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
                                      Navigator.pushNamed(context, 'login');
                                    },
                                    child: Text(
                                      'Way to SignIn',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(

                                          color: Color(0xff58bee6),
                                          fontSize: 18),
                                    ),
                                    style: ButtonStyle(),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );;
  }

  void signup() async{
    if(_name.isNotEmpty && _password.isNotEmpty && _email.isNotEmpty && _phoneNo.isNotEmpty){
      http.Response response = await http.post(
          Uri.parse('https://hackathon22.herokuapp.com/signup'),
          body: <String , String>{
            'name' : _name ,
            'email' : _email ,
            'phoneNo' : _phoneNo ,
            'password' : _password
          }
      );
      if(response.body == 'ok'){
        //go to dashboard
        Navigator.pushNamed(context, 'login');
      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Something Went Wrong."),
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
