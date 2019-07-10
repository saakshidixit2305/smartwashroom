import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class Intro extends StatefulWidget {

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {

  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Smart Washoom",
        description: "Auto Dectection and Alertness system through real time monitoring",
        pathImage: "assets/slider_home.png",
        backgroundColor: Color(0xff212121),
          styleDescription: TextStyle(color: Colors.white),
          styleTitle: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)
      ),
    );
    slides.add(
      new Slide(
        title: "Smart Washoom",
        description: "Ye indulgence unreserved connection alteration appearance",
        pathImage: "assets/slider_security.png",
        backgroundColor: Color(0xff212121),
          styleDescription: TextStyle(color: Colors.white),
          styleTitle: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)
      ),
    );
    slides.add(
      new Slide(
        title: "Smart Washoom",
        description:
        "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        pathImage: "assets/slider_analysis.png",
        backgroundColor: Color(0xff212121),
        styleDescription: TextStyle(color: Colors.white),
        styleTitle: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)
      ),
    );

  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
        colorActiveDot: Colors.white.withOpacity(0.7),
        colorDot: Colors.white.withOpacity(0.2),
        slides: slides,
        onDonePress: (){
          Navigator.of(context).pushNamedAndRemoveUntil('/Login', (Route route) => false);
        },
    );
  }
}
