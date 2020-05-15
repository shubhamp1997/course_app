import '../main.dart';
import 'package:flutter/material.dart';

class Nail extends StatefulWidget {
  @override
  _NailState createState() => _NailState();
}

class _NailState extends State<Nail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
       appBar: new AppBar(title: new Text("Nail Institutes"),backgroundColor: Colors.grey[900],
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
            leading: Image.asset('images/Jawed.png',height: 100,width: 80),
            title:Text("Jawed Habib Academy"),
            subtitle: Text("Advanced makeup, nailart , beauty, airbrush makeup, advance hair, personal grooming"),
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
            leading: Image.asset('images/blossom.png',height: 100,width: 80),
            title:Text("Blossom Kochhar College Of Creative Arts & Design"),
            subtitle: Text("Beauty, makeup , nails , hair"),
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
        Container(
          margin: EdgeInsets.fromLTRB(10,5,10,5),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: ListTile(
            leading: Image.asset('images/shre.PNG',height: 100,width: 80),
            title:Text("Shire beauty training"),
            subtitle: Text("Lash and brow, facial aesthetic ,nail courses ,facial ,hair removal ,asthetic ,microblading, Holistic, makeup ,tannning"),
          ),
        ),
      ]
  );
  return listView;
}
