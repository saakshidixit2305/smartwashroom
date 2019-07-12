import 'package:flutter/material.dart';
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
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: new Text("Home Page"),
      ),
      body: Container(
        color: Colors.black,


        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
          Container(
            height: 175.0,

          decoration: BoxDecoration(
color: Colors.grey,
              image: DecorationImage(
              image: AssetImage("assets/night_with_moon.jpg"),
          fit: BoxFit.cover,
        ),
      ),

    child:  Stack(

                children: <Widget>[

                  Column(
                    children: <Widget>[
                      Text(
                        'Good Evening!',
                        style: TextStyle(
                            color: Colors.white, fontSize: uniWidth / 18),
                      ),
                      Text(
                        "Some random dude's name",
                        style: TextStyle(
                            color: Colors.white, fontSize: uniWidth / 25),
                      ),
                    ],
                  ),

              Row(
                children: <Widget>[
                  Chip(
                    backgroundColor: Colors.white,
                    label: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: ((2.032 * uniHeight) / 100),
                        color: Colors.black,
                      ),
                    ),
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
              ), ],
    ),),
              SizedBox(height: uniHeight / 15),
              Container(
                padding: EdgeInsets.only(
                    left: uniWidth / 14.4, right: uniWidth / 14.4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
              ),
              SizedBox(
                height: 15.0,
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
    ]
        ),
      ),
    )
      );

  }




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
        onTap: () {},
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
        onTap: () {},
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
        onTap: () {},
        splashColor: Colors.purple[300],
        highlightColor: Colors.deepPurpleAccent,
      ),
    );
  }
}
