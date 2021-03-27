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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text(
            "CBSE stands for Central Board of Secondary Education.  CBSE is one of the most popular boards in India"),
        ElevatedButton(
          child: Text("The CBSE official website"),
          onPressed: _launchURLcbseWebsite,
        ),
        ElevatedButton(),
      ],
    ));
  }
}
