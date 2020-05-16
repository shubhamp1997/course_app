import 'package:flutter/material.dart';
import 'package:fsalonapp/Categories/MakeUp.dart';
import 'Categories/Nutrition.dart';
import 'Categories/Nail.dart';
import 'Categories/Hair.dart';
import 'Categories/Spa.dart';
import 'Categories/SkinCare.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();

}

class _SearchState extends State<Search> {

  categoryButton(String imageVal, String name, pageName){
    return FlatButton(
      child: Column(
        children: <Widget>[
          Container(
            height: 130,
            child: Image(
                image: AssetImage('images/$imageVal')),
          ),
          Container(
            child: Text("$name",
                style: TextStyle(
                    fontFamily: 'Gobold',
                    fontSize: 18,
                    color: Colors.white)),
          )
        ],
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => pageName),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 100,bottom: 10),
              child: Text('Search',style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),),
            ), //SEARCH-TITLE TEXT
            Container(
              margin: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(15.0))
              ),
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 2, 20, 4),
                decoration: BoxDecoration(),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "For Example Lakme etc.",
                      hintStyle: TextStyle(
                          color: Colors.grey[500], fontSize: 18)),
                ),
              ),
            ),
            Container(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      categoryButton('makeupBlue.png', 'makeup', MakeUp()),//Makeup
                      categoryButton('facialBlue.png', 'skin care', SkinCare())//Skin care
                    ],
                  ), //Makeup, Skin Care
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                     categoryButton('nutritionBlue.png', 'nutricianist', Nutrition()),//Nutrition/ Dietitian
                      categoryButton('nailBlue.png', "nail art", Nail()) //Nail art
                    ],
                  ), //Nutrition/ Dietitian,Nail art
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      categoryButton('hairBlue.png', 'hair', Hair()),// Hair
                      categoryButton('spaBlue.png', "spa", Spa())// Spa
                    ],
                  ), //Hair courses,Spa therapist
                ],
              ),
            ),
          ],
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
