import 'package:flutter/material.dart';
import 'package:flutterproject/app_config/palette.dart';
import 'package:flutterproject/app_config/styles.dart';
import 'package:flutterproject/app_screens/screens.dart';
import 'package:flutterproject/app_screens/upcomingEvents.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future navigateToStudyMaterials(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => StudyMaterials()));
  }

  Future navigateToUpcomingEvents(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => UpcomingEvents()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.info),
                          color: Colors.white,
                          onPressed: () {},
                        )
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 30.0),
            child: Row(
              children: <Widget>[
                Text('The Ultimate',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Student Helper',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                ),
                Container(
<<<<<<< HEAD
                  height: 200,
                      width: 150.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ElevatedButton(
                        child: Text("BLABLALBAL"), //MIHIR PUT THE PARA HERE
                        onPressed: () {
                        },
                      ),
                    ),
                    Padding(
=======
                  height: 50.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ElevatedButton(
                    child:
                        Text("Study Materials – A Comprehensive Compilation"),
                    onPressed: () {
                      navigateToStudyMaterials(context);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),
                Container(
                  height: 50.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ElevatedButton(
                    child: Text("Upcoming Events for Students"),
                    onPressed: () {
                      navigateToUpcomingEvents(context);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),
                Container(
                  height: 50.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ElevatedButton(
                    child: Text("Internship Opportunities"),
                    onPressed: () {
                      navigateToStudyMaterials(context);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0),
                ),
                Container(
                  height: 50.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ElevatedButton(
                    child: Text("Tips from Former Students"),
                    onPressed: () {
                      navigateToStudyMaterials(context);
                    },
                  ),
                ),
                Padding(
>>>>>>> a966d9fbb26b518479215e6d47c9d15be2228955
                  padding: EdgeInsets.only(top: 30.0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
