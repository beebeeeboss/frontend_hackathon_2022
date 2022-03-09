import 'package:flutter/material.dart';


class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 150,
                child: Image.asset("assets/one.png", fit: BoxFit.contain),
              ),
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
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
             )
            ],
          ),
        ),
      ),
    );
  }
}
