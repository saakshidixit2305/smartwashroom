import 'package:flutter/material.dart';
import 'package:sw2/src/app.dart';
import 'package:sw2/src/ui/pages/home.dart';
import 'src/ui/pages/intro.dart';
import 'src/ui/pages/login.dart';

void main() => runApp(MaterialApp(
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      title: 'SmartWashroom',
      routes: <String, WidgetBuilder>{
        '/Home': (BuildContext context) => AppBody(),
        '/Intro': (BuildContext context) => Intro(),
        '/Login': (BuildContext context) => LoginPage()
      },
    ));