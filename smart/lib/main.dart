import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sw2/src/ui/pages/home.dart';
void main() => runApp(MaterialApp(
  home: SplashScreen(),
  debugShowCheckedModeBanner: false,
  title: 'SmartWashroom',
  routes: <String, WidgetBuilder> {

    '/Home': (BuildContext context) => AppBody(),


  },
));
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushNamedAndRemoveUntil('/Home', (Route route) => false);
    });

  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            child: Center(child:Image(  image: AssetImage("assets/bulb_gif.gif"),
            )
            )
        )
    );

  }
}