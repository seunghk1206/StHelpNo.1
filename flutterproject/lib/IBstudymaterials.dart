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
    return Column(
      children: [
        Column(
          children: [
            Text("The International Baccalaureate Diploma Program (IBDP)"),
            ElevatedButton(
              child: Text("IB Major Study Materials"),
              onPressed: _launchURLIBguides,
            ),
            ElevatedButton(
              child: Text("The official IBO website"),
              onPressed: _launchURLIBofficial,
            ),
            ElevatedButton(
              child: Text("Updated 2021 IBDP past papers - IB Resources "),
              onPressed: _launchURLIBpast,
            ),
            ElevatedButton(
              child: Text("Older IBDP past papers"),
              onPressed: _launchURLIBpast2,
            )
          ],
        )
      ],
    );
  }
}
