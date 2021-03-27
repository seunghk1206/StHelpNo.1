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
      body: Column(
        children: [
          Text(
              "IIT-JEE is the most commonly written engineering entrance exam for undergraduate programs",
              style: TextStyle(
                color: Colors.black,
              )),
          ElevatedButton(
            child: Text("The official IIT-JEE Mains website"),
            onPressed: _launchURLjeeMain,
          ),
          ElevatedButton(
            child: Text("The official IIT-Jee Advanced website"),
            onPressed: _launchURLjeeAdv,
          ),
          ElevatedButton(
            child: Text("IIT-JEE Mains Study Material"),
            onPressed: _launchURLjeeSMMain,
          ),
          ElevatedButton(
            child: Text("IIT-JEE Advanced Study Material"),
            onPressed: _launchURLjeeSMadv,
          ),
          ElevatedButton(
            child: Text("IIT-JEE Mains Past Papers with Solutions"),
            onPressed: _launchURLjeePastMain,
          ),
          ElevatedButton(
            child: Text("IIT-JEE Advanced Past Papers"),
            onPressed: _launchURLjeePastAdv,
          ),
        ],
      ),
    );
  }
}
