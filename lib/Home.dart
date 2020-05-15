import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "Course App",
          style: TextStyle(fontFamily: 'Gobold', color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Center (
        child: Text('Home Page',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}