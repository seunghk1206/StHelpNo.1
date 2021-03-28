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
            padding: EdgeInsets.only(top: 15.0, left: 15.0),
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
          
          Padding(
            padding: EdgeInsets.only(left: 11.0),
            child: Row(
              children: <Widget>[
                Text('The Ultimate',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 27.0)),
                SizedBox(width: 10.0),
                Text('Student Helper',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 27.0))
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            padding: EdgeInsets.only(top: 30, bottom: 60),
            height: MediaQuery.of(context).size.height * 0.73,
            
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(100.0)),
            ),
            
            child: Column(
        children: <Widget>[
          Text('Offering Resources for:',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
          Padding(
                    padding: EdgeInsets.only(top: 45.0)),

          Flexible(
            child: Row(
              children: <Widget>[
                _buildStatCard('', 'ICSE', Colors.lightBlue),
                _buildStatCard('', 'CBSE', Colors.red),
              ],
            ),
          ),
          Flexible(
            child: Row(
              children: <Widget>[
              _buildStatCard('', 'Cambridge International', Colors.orange),

              ],
            ),
          ),
          Flexible(
            child: Row(
              children: <Widget>[
                _buildStatCard('', 'IIT-JEE', Colors.green),
                _buildStatCard('', 'SAT', Colors.pink),
              ],
            ),
          ),
          
          Flexible(
            child: Row(
              children: <Widget>[
                _buildStatCard('', 'International Baccalaureate (IB)', Colors.purple),
              ],
            ),
          ),
               
        ],
      ),
          )
        ],
      ),
    );
  }
}

  

  Expanded _buildStatCard(String title, String count, MaterialColor color) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              count,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

