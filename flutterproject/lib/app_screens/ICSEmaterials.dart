import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ICSEmaterials extends StatelessWidget {
  _launchURLcisce() async {
    const url = 'https://www.cisce.org/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLbyjusICSE() async {
    const url = 'https://byjus.com/icse/icse-study-material/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLicsePast1() async {
    const url =
        'https://www.aplustopper.com/icse-previous-year-papers-solutions-class-10/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLicsePast2() async {
    const url = 'https://byjus.com/icse/icse-10-years-solved-papers/';
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
            "ICSE", 
            textAlign: TextAlign.center,
          ),
        ),

      body: ListView(
        
        children: <Widget>[
           Padding(
                    padding: EdgeInsets.only(top: 50.0)),
          Text(          
              "ICSE – Indian Certificate of Secondary Education",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            
            Padding(
                    padding: EdgeInsets.only(bottom: 60.0)),



          SizedBox(
            width:50,
            height:50,
            child:ElevatedButton(
                  child: Text(
                      "CISCE (the parent body of ICSE) offical website"),
                  onPressed: _launchURLcisce,
                  style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0)),
              ),
              ),),
                     Padding(
                    padding: EdgeInsets.only(top: 50.0)),




                SizedBox(
            width:50,
            height:50,
            child:ElevatedButton(
                child: Text("BYJU'S Free ICSE study materials"),
                onPressed: _launchURLbyjusICSE,
                style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0)),
              ),
              ),),
                 Padding(
                    padding: EdgeInsets.only(top: 50.0)),




                SizedBox(
            width:50,
            height:50,
            child:ElevatedButton(
                child: Text("APlusTopper Website - Solved Past Papers"),
                onPressed: _launchURLicsePast1,
                style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0)),
              ),
              )),
                
                 Padding(
                    padding: EdgeInsets.only(top: 50.0)),



                SizedBox(
            width:50,
            height:50,
            child:ElevatedButton(
                child: Text("BYJU'S Free Solved Past Papers"),
                onPressed: _launchURLicsePast2,
                style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0)),
              ),
              )),
                 Padding(
                    padding: EdgeInsets.only(top: 50.0)),
                
        ]),
    );

  }

}
