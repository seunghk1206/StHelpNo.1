import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutterproject/app_screens/screens.dart';

class SplashScreen extends StatefulWidget {
  final Color backgroundColor = Colors.white;
  final TextStyle styleTextUnderTheLoader = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  final splashDelay = 5;
  String _textforsplash = 'The Ultimate Student Helper';

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => BottomNavScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: Container(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'images/img_splash.png',
                        height: 300,
                        width: 300,
                      ),
                      Padding( padding: EdgeInsets.only(bottom: 15.0),),

                      Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
                child:Text('The Ultimate Student Helper  (TUSH)',
                textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),),
                    ],
                  )),
                ),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}