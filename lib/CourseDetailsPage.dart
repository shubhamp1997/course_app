import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fsalonapp/main.dart';

class CourseDetailsPage extends StatefulWidget {
  @override
  _CourseDetailsPageState createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Institute Details",
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: new AppBar(
          title: new Text('Institute Details'),
          backgroundColor: Colors.grey[900],
          leading: Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: 170,
              width: 400,
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('images/jawed1.jpg'), fit: BoxFit.fill),
                color: Colors.white,
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 100,
                child: Container(
                  child: DefaultTabController(
                    length: 3,
                    child: Scaffold(
                      backgroundColor: Colors.grey[800],
                      appBar: AppBar(
                        backgroundColor: Colors.grey[900],
                        title: Text('Jawed  Habib'),
                        bottom: TabBar(tabs: [
                          Tab(text: 'Overview'),
                          Tab(text: 'Courses & Fees'),
                          Tab(text: 'Reviews'),
                        ]),
                      ),
                      body: TabBarView(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(
                                left: 15, top: 10, right: 15, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: <Widget>[
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Expanded(
                                          child: Text(
                                        "Established:",
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 20),
                                      )),
                                      Expanded(
                                          child: Text(
                                        '2013',
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 20),
                                      )),
                                    ]),
                                Spacer(),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Expanded(
                                          child: Text(
                                        "City:",
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 20),
                                      )),
                                      Expanded(
                                          child: Text(
                                        'New Delhi',
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 20),
                                      )),
                                    ]),
                                Spacer(),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Expanded(
                                          child: Text(
                                        "Website:",
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 20),
                                      )),
                                      Expanded(
                                          child: Text(
                                        'https://www.jawedhabibacademy.com/',
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 20),
                                      )),
                                    ]),
                                Spacer(),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Expanded(
                                          child: Text(
                                        "Mobile:",
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 20),
                                      )),
                                      Expanded(
                                          child: Text(
                                        '9266610366',
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 20),
                                      )),
                                    ]),
                                Spacer(),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 15, top: 10, right: 15, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: <Widget>[
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text(
                                        "Fees:",
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        '2000',
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                    ]),
                                Spacer(),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 15, top: 10, right: 15, bottom: 10),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: <Widget>[
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Text(
                                        "Established:",
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                      Text(
                                        '2013',
                                        style: TextStyle(
                                            fontFamily: 'Raleway',
                                            color: Colors.white,
                                            fontSize: 20),
                                      ),
                                    ]),
                                Spacer(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
