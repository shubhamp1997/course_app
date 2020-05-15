import 'package:flutter/material.dart';
import 'MakeUp.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 100,bottom: 10),
            child: Text('Search',style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
          ), //SEARCH-TITLE TEXT
          Container(
            margin: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(15.0))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: '    For Example Lakme etc.',
                      hintStyle: TextStyle(color: Colors.grey)
                    ),
                  ),
                ),
              ],
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
                    FlatButton(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 130,
                            child: Image(
                                image: AssetImage('images/makeupBlue.png')),
                          ),
                          Container(
                            child: Text("makeup",
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
                          MaterialPageRoute(builder: (context) => MakeUp()),
                        );
                      },
                    ), //Makeup
                    FlatButton(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 130,
                            child: Image(
                                image: AssetImage('images/facialBlue.png')),
                          ),
                          Container(
                            child: Text("skin care",
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
                          MaterialPageRoute(builder: (context) => SkinCare()),
                        );
                      },
                    ), //Skin care
                  ],
                ), //Makeup, Skin Care
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 130,
                            child: Image(
                                image: AssetImage('images/nutritionBlue.png')),
                          ),
                          Container(
                            child: Text("nutricianist",
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
                          MaterialPageRoute(builder: (context) => Nutrition()),
                        );
                      },
                    ), //Nutrition/ Dietitian
                    FlatButton(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 130,
                            child:
                                Image(image: AssetImage('images/nailBlue.png')),
                          ),
                          Container(
                            child: Text("nail art",
                                style: TextStyle(
                                    fontFamily: 'Gobold',
                                    fontSize: 18,
                                    color: Colors.white)),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Nail()),
                        );
                      },
                    ), //Nail art
                  ],
                ), //Nutrition/ Dietitian,Nail art
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    FlatButton(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 130,
                            child:
                                Image(image: AssetImage('images/hairBlue.png')),
                          ),
                          Container(
                            child: Text("hair",
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
                          MaterialPageRoute(builder: (context) => Hair()),
                        );
                      },
                    ), // Hair
                    FlatButton(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 130,
                            child:
                                Image(image: AssetImage('images/spaBlue.png')),
                          ),
                          Container(
                            child: Text("spa",
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
                          MaterialPageRoute(builder: (context) => Spa()),
                        );
                      },
                    ), // Spa
                  ],
                ), //Hair courses,Spa therapist
              ],
            ),
          ),
        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
