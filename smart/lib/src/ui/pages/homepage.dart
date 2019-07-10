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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/Cherry_Tree_-_Stella.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
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
              ),
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

            ],
          ),
        ),
      ),
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
              /*Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    StreamBuilder<String>(
                      stream: _monitorPageBloc.getHumidityData,
                      builder: (context, AsyncSnapshot<String> snapshot) {
                        return snapshot.hasData
                            ? Text(
                          "${snapshot.data}",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: ((6.096 * uniHeight) / 100),
                          ),
                        )
                            : Container(
                          uniHeight: ((2.0 * uniHeight) / 100),
                          width: ((2.0 * uniHeight) / 100),
                          child: Center(
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                              strokeWidth: 1.7,
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        );
                      },
                    ),
                    Text(
                      "%",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: ((2.980 * uniHeight) / 100),
                      ),
                    ),
                  ],
                ),
              ),*/
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
              /*Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    StreamBuilder<String>(
                      stream: _monitorPageBloc.getTempData,
                      builder: (context, AsyncSnapshot<String> snapshot) {
                        return snapshot.hasData
                            ? Text(
                          "${snapshot.data}",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: ((6.096 * uniHeight) / 100),
                          ),
                        )
                            : Container(
                          uniHeight: ((2.0 * uniHeight) / 100),
                          width: ((2.0 * uniHeight) / 100),
                          child: Center(
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                              strokeWidth: 1.7,
                              backgroundColor: Colors.transparent,
                            ),
                          ),
                        );
                      },
                    ),
                    Text(
                      "°C",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: ((2.980 * uniHeight) / 100),
                      ),
                    ),
                  ],
                ),
              ),*/
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
              /*Align(alignment: Alignment.bottomLeft,child: Container(
    uniHeight: ((8.128 * uniHeight) / 100),
    width: ((8.128 * uniHeight) / 100),
    child: StreamBuilder<bool>(
    initialData: false,
    stream: _monitorPageBloc.getMotionDetectionEnabledStatus,
    builder: (BuildContext context,
    AsyncSnapshot<bool> enabledSnapshot)
    {
    if (enabledSnapshot.data)
    {
    NativeCalls.startMotionDetectionSocketIOService();

    return StreamBuilder<bool>(
    initialData: false,
    stream: _monitorPageBloc.getMotionDetectedStatus,
    builder: (BuildContext context,
    AsyncSnapshot<bool> motionDetectionSnapshot) {
    return FlareActor(
    motionDetectionSnapshot.data
    ? _detectedAnimationPath
        : _notDetectedAnimationPath,
    animation: motionDetectionSnapshot.data
    ? _detectedAnimation
        : _notDetectedAnimation,
    alignment: Alignment.centerLeft,
    );
    },
    );
    }
    else
    {
    NativeCalls.stopMotionDetectionSocketIOService();

    return AvatarGlow(
    glowColor: Colors.red,
    repeat: true,
    showTwoGlows: true,
    endRadius: 35.0,
    child: Icon(
    Icons.warning,
    color: Colors.orange,
    size: 35.0,
    ),
    );
    }
    },
    ),
    ),
    ),*/
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
