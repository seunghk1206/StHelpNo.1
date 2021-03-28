import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InternshipWidget extends StatelessWidget {
  _launchURLintern() async {
    const url = 'https://internshala.com/internships/work-from-home-jobs';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLmpower() async {
    const url = 'https://forms.gle/QQPFWFzaHjeoFHFZA';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    
    var internships = {
      1: "Text Correction (Sankrit)",
      2: "Software Project Management",
      3: "Business Development (Sales)",
      4: "Diversity & Inclusion",
      5: "Graphic Design",
      6: "Operations",
      7: "Human Resources (HR) Work",
      8: "Document Formatting/Editing",
      9: "Android App Development",
      10: "CSR Coordination",
    };
    return Scaffold(
      backgroundColor: Colors.pink,
    
      body: ListView(
   
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 50.0,)),

            Text(
          "Upcoming Internship Opportunities",
          textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat",
        )),
            Padding(padding: EdgeInsets.only(top: 50.0,)),

            Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 0, left: 10, right: 10),
            child:Text(
              "Internship opportunities available for students. Note: All the internships mentioned here are virtual.",
              textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat",
              ),
              ),
            ),
            
            Padding(padding: EdgeInsets.only(top: 50.0,)),
            Text(
              "Social Media Team at MPower For Youth",
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat",
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0,)),
            SizedBox(
          width: 50,
          height: 50,
          child: ElevatedButton(
              child: Text(
                "MPower: Social Media Application Form",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat",
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                onPrimary: Colors.white,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(70.0)),
              ),
              onPressed: _launchURLmpower,
              ),
        ),

        Padding(padding: EdgeInsets.only(top: 40.0,)),

            Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 0, left: 10, right: 10),
            child:Text(
              "Other opportunities include: ",
              textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat",
              ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 30.0)),
            Text(
              internships[1],
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
              internships[2],
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
              internships[3],
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
              internships[4],
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
              internships[5],
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
              internships[6],
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
              internships[7],
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
              internships[8],
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
              internships[9],
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
              internships[10],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat"
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 30.0)),


            SizedBox(
          width: 50,
          height: 50,
          child: ElevatedButton(
              child: Text(
                "Find more engrossing opportunities here",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Montserrat",
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                onPrimary: Colors.white,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(70.0)),
              ),
              onPressed: _launchURLintern,
              ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 50.0)),
        ]
        ));
  
  }
}
