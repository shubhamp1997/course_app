

import 'package:flutter/material.dart';
import 'package:fsalonapp/CourseDetailsPage.dart';
import 'package:fsalonapp/Search.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class MakeUp extends StatefulWidget {
  @override
  _MakeUpState createState() => _MakeUpState();
}

class _MakeUpState extends State<MakeUp> {
  detailsButton(String imageName, String name, String description) {
    return FlatButton(
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: ListTile(
          leading: Image.asset('images/$imageName', height: 100, width: 80),
          title: Text("$name"),
          subtitle: Text("$description"),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CourseDetailsPage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: new AppBar(
        title: new Text("MakeUp Institutes"),
        backgroundColor: Colors.grey[900],
        leading: Container(
          child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Search()),
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
      body: StreamBuilder(
          stream: Firestore.instance.collection('test').snapshots(),
          builder: (context, snapshot) {
            return ListView(children: <Widget>[
              detailsButton('Pearl-academy.png', 'Pearl Academy',
                  'drama makeup, hairstyling, beauty makeup, massage, mani pedi'),
              detailsButton('Alps.png', "Alps Beauty Academy ",
                  "Makeup , beauty ,hair, nail ,men , skin"),
              detailsButton('Jawed.png', 'Jawed Habib Academy',
                  "Advanced makeup, nailart , beauty, airbrush makeup, advance hair, personal grooming"),
              detailsButton('Pooja.jpg', "Pooja's Beauty Academy",
                  "Hair, personal grooming, makeup,beauty therapy,salon management and ownership courses"),
              detailsButton('MakeupStu.png', "Make-Up Studio",
                  "Hairstyling and advance makeup , airbrush makeup, intensive hairstyling course"),
              detailsButton(
                  'blossom.png',
                  "Blossom Kochhar College Of Creative Arts & Design",
                  "Beauty, makeup , nails , hair"),
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading:
                      Image.asset('images/IWP.png', height: 100, width: 80),
                  title: Text("IWP Janakpuri Delhi"),
                  subtitle: Text(
                      "Fashion Designing, Dress Designing, Beauty & Makeup"),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading:
                      Image.asset('images/makeuup.PNG', height: 100, width: 80),
                  title: Text("Make U Up Makeup Studio & Academy "),
                  subtitle: Text("Makeup and hairstylist courses"),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading: Image.asset('images/CV.png', height: 100, width: 80),
                  title:
                      Text("Christine Valmy International Academy of Beauty"),
                  subtitle: Text(
                      "Cosmetology, Make-up, Hair Dressing, Skin Esthetics and Nail Art provide to the students hands-on experience and exposure to th service aspect of the Beauty Industry"),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading:
                      Image.asset('images/fat mu.png', height: 100, width: 80),
                  title: Text("Fat Mu Pro Makeup school"),
                  subtitle: Text(
                      "makeup, fashion & beauty, non pro makeup, intro makeup"),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading:
                      Image.asset('images/Lakme.png', height: 100, width: 80),
                  title: Text("Lakme Academy"),
                  subtitle: Text(
                      "Beauty therapy, nail art, cosmetology , skin, hair, makeup, personal grooming"),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading:
                      Image.asset('images/shahnaz.png', height: 100, width: 80),
                  title: Text("Shahnaz Husain International Beauty Academy"),
                  subtitle: Text(
                      "beautician courses, diploma with international standards"),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading:
                      Image.asset('images/shahnaz.png', height: 100, width: 80),
                  title: Text("Shahnaz Husain International Beauty Academy"),
                  subtitle: Text(
                      "beautician courses, diploma with international standards"),
                ),
              ),
            ]);
          }),
    );
  }
}
