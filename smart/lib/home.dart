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
      body: new Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: uniH / 30,left: uniW/12),
            child: SizedBox(
              height: 450,
              width: 350,
              child: Carousel(
                height: 350.0,
                width: 350,
                type: "slideswiper",
                indicatorType: "bubble",
                arrowColor: Colors.white,
                axis: Axis.horizontal,
                showArrow: true,
                images: [
                  new AssetImage("assets/slider_home.png"),
                  new AssetImage("assets/slider_analysis.png"),
                  new AssetImage("assets/slider_security.png")
                ],),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: uniW/3.5,top: uniH/1.2),
            child: RaisedButton(
                child: Text(
                  "Let's Go!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: uniW / 12,
                      fontWeight: FontWeight.w400),
                ),
                elevation: 1.0,
                color: Colors.black26,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(7.0)),
                ),

                onPressed: () {Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) =>
                    Login(),),);},
                splashColor: Colors.white),
          ),
        ],
      ),
    );
  }
}
