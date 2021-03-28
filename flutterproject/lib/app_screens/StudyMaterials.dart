import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/app_config/styles.dart';
import 'package:flutterproject/app_config/palette.dart';
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
      backgroundColor: Palette.primaryColor,

      body: ListView(
        
        children: <Widget>[
           Padding(
                    padding: EdgeInsets.only(top: 50.0)),
          Text(
                "Study Materials for Students",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Montserrat",
                ),
              ),
            
            Padding(
                    padding: EdgeInsets.only(bottom: 60.0)),
          SizedBox(
            width:50,
            height: 50,
            child:ElevatedButton(
                    child: Text(
                  "ICSE",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Montserrat",
                  ),
                ),
                style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(70.0)),
    ),
                    onPressed: () {
                      navigateToICSE(context);
                    }),
          ),

                     Padding(
                    padding: EdgeInsets.only(top: 50.0)),



            SizedBox(
            width:50,
            height: 50,
            child:ElevatedButton(
                  child: Text(
                  "CBSE",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Montserrat",
                  ),
                ),
                style: ElevatedButton.styleFrom(
      primary: Colors.red,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(70.0)),
    ),
                  onPressed: () {
                    navigateToCBSE(context);
                  },
                )),
                 Padding(
                    padding: EdgeInsets.only(top: 50.0)),



                SizedBox(
            width:50,
            height: 50,
            child:ElevatedButton(
                  child: Text(
                  "Cambridge International",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Montserrat",
                  ),
                ),style: ElevatedButton.styleFrom(
      primary: Colors.orange,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(70.0)),
    ),
                  onPressed: () {
                    navigateTocie(context);
                  },
                )),
                 Padding(
                    padding: EdgeInsets.only(top: 50.0)),



                SizedBox(
            width:50,
            height: 50,
            child:ElevatedButton(
                  child: Text(
                  "IIT-JEE",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Montserrat",
                  ),
                ),
                style: ElevatedButton.styleFrom(
      primary: Colors.green,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(70.0)),
    ),
                  onPressed: () {
                    navigateToJEE(context);
                  },
                )),
                 Padding(
                    padding: EdgeInsets.only(top: 50.0)),


                

                SizedBox(
            width:50,
            height: 50,
            child:ElevatedButton(
                  child: Text(
                  "SAT",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Montserrat",
                  ),
                ),
                style: ElevatedButton.styleFrom(
      primary: Colors.pink,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(70.0)),
    ),
                  onPressed: () {
                    navigateToSAT(context);
                  },
                )),
                
                 Padding(
                    padding: EdgeInsets.only(top: 50.0)),
                


                SizedBox(
            width:50,
            height: 50,
            child:ElevatedButton(
                  child: Text(
                  "International Baccalaureate (IB)",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Montserrat",
                  ),
                ),style: ElevatedButton.styleFrom(
      primary: Colors.purple,
      onPrimary: Colors.white,
      shape: new RoundedRectangleBorder(
      borderRadius: new BorderRadius.circular(70.0)),
    ),
                  onPressed: () {
                    navigateToib(context);
                  },
                )),
                 Padding(
                    padding: EdgeInsets.only(top: 50.0)),
                


        ]),
    );

  }
}