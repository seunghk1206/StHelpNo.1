import 'package:flutter/material.dart';
import 'StudyMaterials.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future navigateToStudyMaterials(context) async {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => StudyMaterials()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.filter_list),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(Icons.menu),
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
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Student',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Helper',
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
                        child: Text("Study Materials – A Comprehensive Compilation"),
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

