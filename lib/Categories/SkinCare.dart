import '../main.dart';
import 'package:flutter/material.dart';

class SkinCare extends StatefulWidget {
  @override
  _SkinCareState createState() => _SkinCareState();
}

class _SkinCareState extends State<SkinCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: new AppBar(title: new Text("Skin Care Institutes"),backgroundColor: Colors.grey[900],
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
            leading: Image.asset('images/Lakme.png',height: 100,width: 80),
            title:Text("Lakme Academy"),
            subtitle: Text("Beauty therapy, nail art, cosmetology , skin, hair, makeup, personal grooming"),
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
            leading: Image.asset('images/Alps.png',height: 100,width: 80),
            title:Text("Alps Beauty Academy "),
            subtitle: Text("Makeup , beauty ,hair, nail ,men , skin"),
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
            leading: Image.asset('images/CV.png',height: 100,width: 80),
            title:Text("Christine Valmy International Academy of Beauty"),
            subtitle: Text("Cosmetology, Make-up, Hair Dressing, Skin Esthetics and Nail Art provide to the students hands-on experience and exposure to th service aspect of the Beauty Industry"),
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
            leading: Image.asset('images/butic.png',height: 100,width: 80),
            title:Text("Butic College of Beauty"),
            subtitle: Text("beauty spa face massage international diploma hair skin"),
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
            leading: Image.asset('images/naseem.png',height: 100,width: 80, color: Colors.grey[900],),
            title:Text("Naseem Salon Academy"),
            subtitle: Text("hair , makeup , skin , marketing"),
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
            leading: Image.asset('images/studio99.png',height: 100,width: 80),
            title:Text("Studio 99 Academy"),
            subtitle: Text("makeup , hair , skin,cosmetology"),
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
            leading: Image.asset('images/euro.PNG',height: 100,width: 80),
            title:Text("Euro Croma Institute of cosmetology"),
            subtitle: Text("makeup ,beauty and skincare ,hair dressing, spa and Wellness, nail design"),
          ),
        ),
      ]
  );
  return listView;
}

