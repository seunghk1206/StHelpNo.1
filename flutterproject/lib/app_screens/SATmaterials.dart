import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SATmaterials extends StatelessWidget {
  _launchURLsatOff() async {
    const url = 'https://collegereadiness.collegeboard.org/sat';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLsatPT() async {
    const url =
        'https://collegereadiness.collegeboard.org/sat/practice/full-length-practice-tests';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLsatKA() async {
    const url = 'https://www.khanacademy.org/SAT';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu_book,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
        title: Text(
          "SAT",
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 50.0)),
        Text(
          "SAT",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Montserrat",
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 20.0)),
        Text(
          "The SAT is a standardized examination, administed by the College Board. It is mainly used in college admissions to the U.S",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontFamily: "Montserrat",
            color: Colors.white,
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 60.0)),


        SizedBox(
            width:50,
            height:50,
            child:ElevatedButton(
            child: Text("The official SAT website"),
            onPressed: _launchURLsatOff,
            style: ElevatedButton.styleFrom(
              primary: Colors.pink,
              onPrimary: Colors.white,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
            ))),
        Padding(padding: EdgeInsets.only(top: 50.0)),



        SizedBox(
            width:50,
            height:50,
            child:ElevatedButton(
          child: Text("Official SAT Practice Tests"),
          onPressed: _launchURLsatPT,
          style: ElevatedButton.styleFrom(
            primary: Colors.pink,
            onPrimary: Colors.white,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          ),
        )),
        Padding(padding: EdgeInsets.only(top: 50.0)),



        SizedBox(
            width:50,
            height:50,
            child:ElevatedButton(
          child: Text("Khan Academy Practice Resources"),
          onPressed: _launchURLsatKA,
          style: ElevatedButton.styleFrom(
            primary: Colors.pink,
            onPrimary: Colors.white,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          ),
        )),
        Padding(padding: EdgeInsets.only(top: 50.0)),


      ]),
    );
  }
}
