
import 'package:smart/homepg.dart';
import 'app.dart';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: SplashScreen(),
  debugShowCheckedModeBanner: false,
  title: 'SmartWashroom',
  routes: <String, WidgetBuilder> {

    '/Home': (BuildContext context) => HomePage(),


  },
));
