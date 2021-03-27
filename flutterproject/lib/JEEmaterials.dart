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
          )
        ],
      ),
    );
  }
}
