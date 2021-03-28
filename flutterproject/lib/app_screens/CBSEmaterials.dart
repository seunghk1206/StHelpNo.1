import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class cbseMaterials extends StatelessWidget {
  _launchURLcbseWebsite() async {
    const url = 'https://www.cbse.gov.in/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLcbseByjus() async {
    const url = 'https://byjus.com/cbse-study-material/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLcbseNCERTguru() async {
    const url = 'https://www.ncertbooks.guru/study-material/';
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
        backgroundColor: Colors.red,
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
          "CBSE",
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 50.0)),
        Text(
          "CBSE – Central Board of Secondary Education",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 60.0)),
        SizedBox(
            width: 50,
            height: 50,
            child: ElevatedButton(
                child: Text("The CBSE official website"),
                onPressed: _launchURLcbseWebsite,
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  onPrimary: Colors.white,
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                ))),
        Padding(padding: EdgeInsets.only(top: 50.0)),
        SizedBox(
            width: 50,
            height: 50,
            child: ElevatedButton(
              child: Text("BYJU'S Free CBSE Resources"),
              onPressed: _launchURLcbseByjus,
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.white,
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
              ),
            )),
        Padding(padding: EdgeInsets.only(top: 50.0)),
        SizedBox(
            width: 50,
            height: 50,
            child: ElevatedButton(
              child: Text("Free PDF Study Material Downloads - NCERT Guru"),
              onPressed: _launchURLcbseNCERTguru,
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
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
