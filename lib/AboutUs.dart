import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 1,
        title: Text(
          "About Us",
          style: TextStyle(fontFamily: 'Gobold', color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Center (
        child: Text('AboutUs Page', style: TextStyle(color: Colors.white),),
      ),
    );
  }
}