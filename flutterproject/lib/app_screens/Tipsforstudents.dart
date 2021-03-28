import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutterproject/app_config/palette.dart';

class Tipsforstudents extends StatelessWidget {

  _launchURLicseTips() async {
    const url =
        'https://www.shiksha.com/boards/icse-board-preparation/';
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
      appBar: AppBar(
        backgroundColor: Color(0xFF21BFBD),
              actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.face_retouching_natural,
            color: Colors.white,
          ),
          onPressed: () {
            // do something
          },
        )
      ],
          title: Text(
            "Practical Tips for Students", 
            textAlign: TextAlign.center,
          ),
        ),
      body: Center(
        child: Column(
          children: [
            Padding(
                    padding: EdgeInsets.fromLTRB(15, 30, 15, 30),
            child:Text(
              "We have included links to tips for students from various education boards. These tips are very useful to learn and to prepare for your exams!",
              textAlign: TextAlign.center,
              
              style: TextStyle(
              fontFamily: "Montserrat",
              color:Colors.white,
              fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),),
            ElevatedButton(
              child: Text("ICSE Study Tips"),
              onPressed: _launchURLicseTips,
            ),
            ElevatedButton(
              child: Text("CBSE Study Tips"),
              onPressed: _launchURLcbseTips,
            ),
            ElevatedButton(
              child: Text("Cambridge International Study Tips"),
              onPressed: _launchURLcieTips,
            ),
            ElevatedButton(
              child: Text("IIT-JEE Study Tips"),
              onPressed: _launchURLiitTips,
            ),
            ElevatedButton(
              child: Text("SAT Study Tips"),
              onPressed: _launchURLsatTips,
            ),
            ElevatedButton(
              child: Text("IBDP Study Tips"),
              onPressed: _launchURLIBTips,
            )
          ],
        ),
      ),
    );
  }
}
