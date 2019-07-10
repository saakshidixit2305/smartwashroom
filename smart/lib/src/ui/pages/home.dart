import 'package:flutter/material.dart';


double uniW;
double uniH;

class AppBody extends StatefulWidget {
  @override
  AppBodyState createState() => AppBodyState();
}

class AppBodyState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    uniH = MediaQuery.of(context).size.height;
    uniW = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(

      )
    );
  }
}
