import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutterproject/app_config/palette.dart';

class Tipsforstudents extends StatelessWidget {

  _launchURLicseTips() async {
    const url =
        'https://www.askiitians.com/school-exams/cisce/icse/preparation-tips.html';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLcbseTips() async {
    const url =
        'https://www.indiaeducation.net/cbse/preparation-tips.aspx';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  _launchURLcieTips() async {
    const url =
        'https://blog.cambridgeinternational.org/tips-for-effective-exam-preparation/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLiitTips() async {
    const url =
        'https://www.mindler.com/blog/iit-jee-preparation-without-coaching/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURLsatTips() async {
    const url =
        'https://blog.prepscholar.com/sat-tips-and-tricks-you-must-use';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  _launchURLIBTips() async {
    const url =
        'https://www.crimsoneducation.org/au/blog/test-prep/top-10-ib-study-tips/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      
      body: ListView(
          children: <Widget>[

            Padding(
                    padding: EdgeInsets.only(top: 50.0, bottom: 30),

              child:Text("Practical Tips for Students"  ,            
              textAlign: TextAlign.center,
              style: TextStyle(
              fontFamily: "Montserrat",
              color:Colors.white,
              fontWeight: FontWeight.w600,
                fontSize: 25,
              ),
            ),

            ),


            Padding(
                    padding: EdgeInsets.only(top: 10.0, bottom: 0, left: 10, right: 10),
            child:Text(
              "We have included links to tips for students from various education boards. These tips are very useful in preparation for you examinations.    Good Luck!",
              textAlign: TextAlign.center,
              
              style: TextStyle(
              fontFamily: "Montserrat",
              color:Colors.white,
              fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),),

            SizedBox(height: 20.0),
          Container(
            padding: EdgeInsets.only(top: 30, bottom: 0),
            height: MediaQuery.of(context).size.height * 0.60,
            
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(100.0)),
            ),

            
          child: Column(
        children: <Widget>[

            SizedBox(
              width:220,
              height: 50,
              child:ElevatedButton(
              child: Text("ICSE Study Tips"),
              style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0))),
              onPressed: _launchURLicseTips,
            )
            ),
            Padding(
                    padding: EdgeInsets.only(top: 30.0)),
            
          
            
            SizedBox(
              width:220,
              height: 50,
              child:ElevatedButton(
              child: Text("CBSE Study Tips"),
              style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0))),
              
              onPressed: _launchURLcbseTips,
            )),
            Padding(
                    padding: EdgeInsets.only(top: 30.0)),



            
            SizedBox(
              width:220,
              height: 50,
              child:ElevatedButton(
              child: Text("Cambridge International Study Tips"),
              style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0))),
              onPressed: _launchURLcieTips,
            )),
            Padding(
                    padding: EdgeInsets.only(top: 30.0)),


            SizedBox(
              width:220,
              height: 50,
              child:ElevatedButton(
              child: Text("IIT-JEE Study Tips"),
              style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0))),
              onPressed: _launchURLiitTips,
            )),
            Padding(
                    padding: EdgeInsets.only(top: 30.0)),

            
            SizedBox(
              width:220,
              height: 50,
              child:ElevatedButton(
              child: Text("SAT Study Tips"),
              style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0))),
              onPressed: _launchURLsatTips,
            )),
            Padding(
                    padding: EdgeInsets.only(top: 30.0)),
            
            
            SizedBox(
              width:220,
              height: 50,
              child:ElevatedButton(
              child: Text("IBDP Study Tips"),
              style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(30.0))),
              onPressed: _launchURLIBTips,
            )),
            Padding(
                    padding: EdgeInsets.only(top: 30.0)),
          ],),
        ),
          ],
    ))
    ;
}

}