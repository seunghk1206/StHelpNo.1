import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UpcomingEvents extends StatelessWidget {
  _launchURLmun() async {
    const url = 'https://munfinder.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    
    var events = {
      1: "Colloquium MUN",
      2: "Brainiac MUN",
      3: "Delhi School of Economics MUN",
      4: "8th World Congress on HMS",
      5: "Stay Home Model United Nations",
      6: "Longfellow Middle School MUN Conference",
      7: "Western Canada High School MUN 2021",
      8: "elbMUN Online Conference 2021",
      9: "Stay At Home Model United Nations 2021",
      10: "International Crisis Summit MUN 2021"
    };
    return Scaffold(
      backgroundColor: Colors.orange,
    
        body: ListView(
          
          children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 50.0)),

              Text("Upcoming Events in India",
            textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat",
          ),),

            Padding(padding: EdgeInsets.only(top: 50.0,)),
                    Text("MUNs Available:",
                    textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Montserrat",
          ),),
              
              Padding(padding: EdgeInsets.only(bottom: 40.0)),
              Text(
                events[1],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat",
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 30.0)),
              Text(
                events[2],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat"
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 30.0)),
              Text(
                events[3],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat"
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 30.0)),
              Text(
                events[4],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat"
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 30.0)),
              Text(
                events[5],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat"
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 30.0)),
              Text(
                events[6],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat"
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 30.0)),
              Text(
                events[7],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat"
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 30.0)),
              Text(
                events[8],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat"
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 30.0)),
              Text(
                events[9],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat"
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 30.0)),
              Text(
                events[10],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat"
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 40.0)),
              Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          alignment: Alignment.bottomLeft,
                          icon: Icon(Icons.add),
                          iconSize: 60,
                          color: Colors.green,
                          onPressed: _launchURLmun,
                        )
                      ],
                    )),
              Padding(padding: EdgeInsets.only(bottom: 40.0)),
            ],
          ),
        );
  }
}
