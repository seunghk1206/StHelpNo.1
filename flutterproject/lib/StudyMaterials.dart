import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'IBstudymaterials.dart';
import 'CambridgeStudyMaterials.dart';
import 'CBSEmaterials.dart';
import 'ICSEmaterials.dart';
import 'JEEmaterials.dart';
import 'SATmaterials.dart';

class StudyMaterials extends StatelessWidget {
  Future navigateToib(context) async {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => IBMaterialsContainer()));
  }

  Future navigateTocie(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CambridgeContainer()));
  }

  Future navigateToCBSE(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => cbseMaterials()));
  }

  Future navigateToICSE(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ICSEmaterials()));
  }

  Future navigateToSAT(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SATmaterials()));
  }

  Future navigateToJEE(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => JEEmaterials()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Study Material"),
          backgroundColor: Colors.lightBlueAccent[400],
        ),
        body: Column(
          children: [
            Text("Study Materials for various curricula"),
            ElevatedButton(
                child: Text("IBDP resources"),
                onPressed: () {
                  navigateToib(context);
                }),
            ElevatedButton(
              child: Text("Cambridge International Resources"),
              onPressed: () {
                navigateTocie(context);
              },
            ),
            ElevatedButton(
              child: Text("CBSE resources"),
              onPressed: () {
                navigateToCBSE(context);
              },
            ),
            ElevatedButton(
              child: Text("ICSE resources"),
              onPressed: () {
                navigateToICSE(context);
              },
            ),
            ElevatedButton(
              child: Text("IIT-JEE resources"),
              onPressed: () {
                navigateToJEE(context);
              },
            ),
            ElevatedButton(
              child: Text("SAT resources"),
              onPressed: () {
                navigateToSAT(context);
              },
            ),
          ],
        ));
  }
}
