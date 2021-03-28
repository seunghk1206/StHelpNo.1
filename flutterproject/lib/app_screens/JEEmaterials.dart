import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class JEEmaterials extends StatelessWidget {
  _launchURLjeeMain() async {
    const url = 'https://jeemain.nta.nic.in/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLjeeAdv() async {
    const url = 'http://jeeadv.ac.in/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLjeePastAdv() async {
    const url = 'https://jeeadv.ac.in/pastqp.php';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLjeePastMain() async {
    const url = 'https://byjus.com/jee/jee-main-question-paper/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLjeeSMMain() async {
    const url = 'https://www.embibe.com/exams/jee-main-study-material/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLjeeSMadv() async {
    const url =
        'https://www.careerindia.com/entrance-exam/jee-advanced-study-material-and-reference-books-e11.html';
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
        backgroundColor: Colors.green,
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
            "IIT-JEE", 
            textAlign: TextAlign.center,
            
          ),
        ),

      body: ListView(
        
        children: <Widget>[
           Padding(
                    padding: EdgeInsets.only(top: 50.0)),
          Text(
              "IIT-JEE",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontFamily: "Montserrat",
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
                    padding: EdgeInsets.only(top: 20.0)),
            Text(
              "IIT-JEE is one of the most written engineering entrace exams for undergraduate programs in India",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontFamily: "Montserrat",
              ),
            ),

Padding(
                    padding: EdgeInsets.only(bottom: 20.0)),

          SizedBox(
            width:50,
            height:50,
            child:ElevatedButton(
                child: Text("The official IIT-JEE Mains website"),
                onPressed: _launchURLjeeMain,
              
            style: ElevatedButton.styleFrom(
      primary: Colors.green,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0)),
      ))),
                     Padding(
                    padding: EdgeInsets.only(top: 50.0)),




          SizedBox(
            width:50,
            height:50,
            child:ElevatedButton(
                child: Text("The official IIT-Jee Advanced website"),
                onPressed: _launchURLjeeAdv,
          
              style: ElevatedButton.styleFrom(
      primary: Colors.green,
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
                child: Text("IIT-JEE Mains Study Material"),
                onPressed: _launchURLjeeSMMain,
          
              style: ElevatedButton.styleFrom(
      primary: Colors.green,
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
                child: Text("IIT-JEE Advanced Study Material"),
                onPressed: _launchURLjeeSMadv,
          
              style: ElevatedButton.styleFrom(
      primary: Colors.green,
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
                child: Text("IIT-JEE Advanced Past Papers"),
                onPressed: _launchURLjeePastAdv,
          
              style: ElevatedButton.styleFrom(
      primary: Colors.green,
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
                child: Text("IIT-JEE Mains Past Papers with Solutions"),
                onPressed: _launchURLjeePastMain,
          
              style: ElevatedButton.styleFrom(
      primary: Colors.green,
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

