import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:flutterproject/app_config/styles.dart';

class CambridgeContainer extends StatelessWidget {
  _launchURLCambridgeofficial() async {
    const url = 'https://www.cambridgeinternational.org/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLcieChem() async {
    const url = 'https://www.chemguideforcie.co.uk/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLciePMT() async {
    const url = 'https://www.physicsandmathstutor.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLciePast() async {
    const url =
        'https://pastpapers.papacambridge.com/?dir=Cambridge%20International%20Examinations%20%28CIE%29';
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
        backgroundColor: Colors.orange,
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
          "Cambridge International",
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 50.0)),
        Text(
          "The Cambridge International Curriculum",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        Padding(padding: EdgeInsets.only(bottom: 60.0)),
        ElevatedButton(
            child: Text("The official Cambridge International Website"),
            onPressed: _launchURLCambridgeofficial,
            //style: const Styles.buttonTextStyle,
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              onPrimary: Colors.white,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0)),
            )),
        Padding(padding: EdgeInsets.only(top: 50.0)),
        ElevatedButton(
          child: Text("A level Chemistry Revision Material"),
          onPressed: _launchURLcieChem,
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            onPrimary: Colors.white,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 50.0)),
        ElevatedButton(
          child: Text("A level Physics Study Material"),
          onPressed: _launchURLciePMT,
          style: ElevatedButton.styleFrom(
            primary: Colors.orange,
            onPrimary: Colors.white,
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0)),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 50.0)),
      ]),
    );
  }
}
