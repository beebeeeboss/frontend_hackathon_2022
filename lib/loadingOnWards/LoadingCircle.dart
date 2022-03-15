import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class LoadingCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SpinKitHourGlass(
        color: Colors.lightBlueAccent,
        size: 50.0,
      ),
    );
  }


}
