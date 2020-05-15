import '../main.dart';
import 'package:flutter/material.dart';

class Spa extends StatefulWidget {
  @override
  _SpaState createState() => _SpaState();
}

class _SpaState extends State<Spa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: new AppBar(title: new Text("Spa Institutes"),backgroundColor: Colors.grey[900],
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
            leading: Image.asset('images/isas.PNG',height: 100,width: 80),
            title:Text("ISAS International Beauty School, Ahmedabad"),
            subtitle: Text("Diploma course in Hair Designing, Diploma in Nail Therapy, Diploma in Spa Therapy, Certificate in beauty and Hair, Masters programme in Cosmetology"),
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
            title:Text("international cosmetology school"),
            subtitle: Text("beauty, hair, makeup, nail, nutrician, dietician,spa"),
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
            leading: Image.asset('images/zur.png',height: 100,width: 80),
            title:Text("Zuri Academy"),
            subtitle: Text("cosmetology ,makeup ,hair, beauty ,body spa, nail and other"),
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
