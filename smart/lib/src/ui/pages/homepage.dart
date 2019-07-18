import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
//import 'package:share/share.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double uniWidth;
  double uniHeight;

  final GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    uniWidth = MediaQuery.of(context).size.width;
    uniHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Container(
                height: uniHeight / 2,
                width: uniWidth,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage("assets/night_with_moon.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: uniHeight / 12,
                              bottom: uniHeight / 25,
                              left: uniWidth / 20),
                          child: Text(
                            'Good Evening!',
                            style: TextStyle(
                                color: Colors.white, fontSize: uniWidth / 18),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: uniHeight / 30),
                          child: Text(
                            "John Doe",
                            style: TextStyle(
                                color: Colors.white, fontSize: uniWidth / 25),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              /*SizedBox(height: uniHeight / 15),*/
              /*Container(
            padding:
                EdgeInsets.only(left: uniWidth / 14.4, right: uniWidth / 14.4),


          ),*/
              /*SizedBox(
            height: 15.0,
          ),*/
              Row(
                children: <Widget>[
                  Switch(
                    value: isSwitched0,
                    onChanged: (value) {
                      setState(() {
                        isSwitched0 = value;
                      });
                    },
                    activeTrackColor: Colors.lightGreenAccent,
                    activeColor: Colors.green,
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Text(
                    "Motion Detection",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 2.0,
                mainAxisSpacing: 4.0,
                shrinkWrap: true,
                children: <Widget>[
                  _buildCardUV(),
                  _buildCardRIM(),
                  _buildCardSPRAY(),
                  _buildCardSPRAY(),
                ],
              ),
            ]),
          ),
        ));
  }

  bool isSwitched0 = true;
  bool isSwitched1 = true;
  bool isSwitched2 = true;
  bool isSwitched3 = true;

  Widget _buildCardUV() {
    return Card(
      margin: EdgeInsets.all(
        ((1.354 * uniHeight) / 100),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          ((2.032 * uniHeight) / 100),
        ),
      ),
      color: Colors.grey,
      elevation: ((0.606 * uniHeight) / 100),
      child: InkWell(
        child: Container(
          padding: EdgeInsets.only(
            top: ((2.032 * uniHeight) / 100),
            left: ((2.032 * uniHeight) / 100),
            right: ((2.032 * uniHeight) / 100),
            bottom: ((2.709 * uniHeight) / 100),
          ),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag: "dash",
                      transitionOnUserGestures: true,
                      child: Image.asset(
                        "assets/bulb.png",
                        height: ((4.064 * uniHeight) / 100),
                        width: ((4.064 * uniHeight) / 100),
                      ),
                    ),
                    SizedBox(
                      height: ((2.709 * uniHeight) / 100),
                    ),
                    Text(
                      "UV",
                      style: TextStyle(
                        fontFamily: 'CardName_Arial',
                        //color: Pigment.fromString("#c9c7cd"),
                        fontSize: ((1.71 * uniHeight) / 100),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        splashColor: Colors.purple[300],
        highlightColor: Colors.deepPurpleAccent,
        onTap: () {
          showDialog(
              context: context,
              builder: (context) => new AlertDialog(
                title: Text('Slide to switch Enable/Disable'),
                backgroundColor: Colors.grey,
                content: Row(
                  children: <Widget>[
                    Switch(
                      value: isSwitched1,
                      onChanged: (value) {
                        setState(() {
                          isSwitched1 = value;
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.white,
                    ),
                    SizedBox(
                      width: 90.0,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: uniHeight / 15,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 2.0),
                              child: Text(
                                "Graphical",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 13.0),
                              ),
                            ),
                            Text(
                              "Analysis",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 13.0),
                            )
                          ],
                        ),
                      ),
                      //child: Text("Graphical"),
                      color: Colors.black45,
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }

  Widget _buildCardSPRAY() {
    return Card(
      borderOnForeground: false,
      margin: EdgeInsets.all(
        ((1.354 * uniHeight) / 100),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          ((2.032 * uniHeight) / 100),
        ),
      ),
      color: Colors.grey,
      elevation: ((0.406 * uniHeight) / 100),
      child: InkWell(
        child: Container(
          height: 200,
          width: 200,
          padding: EdgeInsets.only(
            top: ((2.032 * uniHeight) / 100),
            left: ((2.032 * uniHeight) / 100),
            right: ((2.032 * uniHeight) / 100),
            bottom: ((2.709 * uniHeight) / 100),
          ),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      "assets/bulb.png",
                      height: ((4.064 * uniHeight) / 100),
                      width: ((4.064 * uniHeight) / 100),
                    ),
                    SizedBox(
                      height: ((2.709 * uniHeight) / 100),
                    ),
                    Text(
                      "SPRAY",
                      style: TextStyle(
                        fontFamily: 'CardName_Arial',
                        //color: Pigment.fromString("#c9c7cd"),
                        fontSize: ((1.71 * uniHeight) / 100),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          showDialog(
              context: context,
              builder: (context) => new AlertDialog(
                title: Text('Slide to switch Enable/Disable'),
                backgroundColor: Colors.grey,
                content: Row(
                  children: <Widget>[
                    Switch(
                      value: isSwitched1,
                      onChanged: (value) {
                        setState(() {
                          isSwitched1 = value;
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.white,
                    ),
                    SizedBox(
                      width: 90.0,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: uniHeight / 15,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 2.0),
                              child: Text(
                                "Graphical",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 13.0),
                              ),
                            ),
                            Text(
                              "Analysis",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 13.0),
                            )
                          ],
                        ),
                      ),
                      //child: Text("Graphical"),
                      color: Colors.black45,
                    )
                  ],
                ),
              ));
        },
        splashColor: Colors.purple[300],
        highlightColor: Colors.deepPurpleAccent,
      ),
    );
  }

  Widget _buildCardRIM() {
    return Card(
      borderOnForeground: false,
      margin: EdgeInsets.all(
        ((1.354 * uniHeight) / 100),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          ((2.032 * uniHeight) / 100),
        ),
      ),
      color: Colors.grey,
      elevation: ((0.406 * uniHeight) / 100),
      child: InkWell(
        child: Container(
          padding: EdgeInsets.only(
            top: ((2.032 * uniHeight) / 100),
            left: ((2.032 * uniHeight) / 100),
            right: ((2.032 * uniHeight) / 100),
            bottom: ((2.709 * uniHeight) / 100),
          ),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.asset(
                      "assets/bulb.png",
                      height: ((4.064 * uniHeight) / 100),
                      width: ((4.064 * uniHeight) / 100),
                    ),
                    SizedBox(
                      height: ((2.709 * uniHeight) / 100),
                    ),
                    Text(
                      "RIM",
                      style: TextStyle(
                        fontFamily: 'CardName_Arial',
                        //color: Pigment.fromString("#c9c7cd"),
                        fontSize: ((1.71 * uniHeight) / 100),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          showDialog(
              context: context,
              builder: (context) => new AlertDialog(
                title: Text('Slide to switch Enable/Disable'),
                backgroundColor: Colors.grey,
                content: Row(
                  children: <Widget>[
                    Switch(
                      value: isSwitched1,
                      onChanged: (value) {
                        setState(() {
                          isSwitched1 = value;
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.white,
                    ),
                    SizedBox(
                      width: 90.0,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Container(
                        height: uniHeight / 15,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 2.0),
                              child: Text(
                                "Graphical",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 13.0),
                              ),
                            ),
                            Text(
                              "Analysis",
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 13.0),
                            )
                          ],
                        ),
                      ),
                      //child: Text("Graphical"),
                      color: Colors.black45,
                    )
                  ],
                ),
              ));
        },
        splashColor: Colors.purple[300],
        highlightColor: Colors.deepPurpleAccent,
      ),
    );
  }
}
