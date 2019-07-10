import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'login1.dart';

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
      backgroundColor: Colors.black,
      body: Container(

      )
    );
  }
}
