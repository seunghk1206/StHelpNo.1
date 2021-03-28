import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IBMaterialsContainer extends StatelessWidget {
  _launchURLIBguides() async {
    const url = 'https://ibguides.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLIBofficial() async {
    const url = 'https://www.ibo.org/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLIBpast() async {
    const url = 'https://ibresources.org/ib-past-papers/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLIBpast2() async {
    const url =
        'https://sites.google.com/learning.ecolint.ch/ib-revision-resources/past-papers';
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
        backgroundColor: Colors.purple,
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
            "International Baccalaureate", 
            textAlign: TextAlign.center,
          ),
        ),

      body: ListView(
        
        children: <Widget>[
           Padding(
                    padding: EdgeInsets.only(top: 50.0)),
          Text(          
              "The International Baccalaureate Diploma Program (IBDP)",
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
              child: Text("IB Guides website"),
              onPressed: _launchURLIBguides,
            style: ElevatedButton.styleFrom(
      primary: Colors.purple,
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
              child: Text("The official IBO website"),
              onPressed: _launchURLIBofficial,
              style: ElevatedButton.styleFrom(
      primary: Colors.purple,
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
              child: Text("Updated 2021 IBDP Past Papers - IB Resources "),
              onPressed: _launchURLIBpast,
              style: ElevatedButton.styleFrom(
      primary: Colors.purple,
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
              child: Text("Older IBDP Past Papers"),
              onPressed: _launchURLIBpast2,
            style: ElevatedButton.styleFrom(
      primary: Colors.purple,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0)),
      ))),
                     Padding(
                    padding: EdgeInsets.only(top: 50.0)),

                
        ]),
    );

  }

}







