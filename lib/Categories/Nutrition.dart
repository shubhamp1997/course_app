import '../main.dart';
import 'package:flutter/material.dart';

class Nutrition extends StatefulWidget {
  @override
  _NutritionState createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: new AppBar(title: new Text("Nutritionist Institutes"),backgroundColor: Colors.grey[900],
          leading:  Container(
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),),
        body: getListView()
    );
  }
}

Widget getListView()
{
  var listView=ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(10,5,10,5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: ListTile(
            leading: Image.asset('images/orane.png',height: 100,width: 80),
            title:Text("Orane International School of Beauty & Wellness"),
            subtitle: Text("Cosmetology,aesthetic , hair , human nutrition and dietetics, spa , beauty"),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10,5,10,5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: ListTile(
            leading: Image.asset('images/ignou.png',height: 100,width: 80),
            title:Text("IGNOU - Indira Gandhi National Open University, Ahmedabad"),
            subtitle: Text("Diploma in Nutrition and health Education"),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10,5,10,5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: ListTile(
            leading: Image.asset('images/99.png',height: 100,width: 80, color: Colors.grey[900],),
            title:Text("99 Studio"),
            subtitle: Text("beauty therapy ,makeup ,nail art ,mehndi ,hair ,cosmetology ,skincare, dieting and nutrition Salon management"),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10,5,10,5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: ListTile(
            leading: Image.asset('images/ICS.png',height: 100,width: 80),
            title:Text("International Cosmetology School"),
            subtitle: Text("beauty, hair, makeup, nail, nutrician, dietician,spa"),
          ),
        ),
      ]
  );
  return listView;
}


