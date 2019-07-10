import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sw2/src/ui/utils/constants.dart';

import 'ui/pages/intro.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  double uniWidth;
  double uniHeight;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushNamedAndRemoveUntil('/Intro', (Route route)=> false);
    });
  }

  @override
  Widget build(BuildContext context) {
    uniWidth = MediaQuery.of(context).size.width;
    uniHeight = MediaQuery.of(context).size.height;

    Constants.uniHeight = this.uniHeight;
    Constants.uniWidth = this.uniWidth;

    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            child: Center(
                child: Image(
          image: AssetImage("assets/bulb_gif.gif"),
        ))));
  }
}
