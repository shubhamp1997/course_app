import 'package:flutter/material.dart';
import 'package:fsalonapp/Search.dart';
import 'package:fsalonapp/main.dart';

class MakeUp extends StatefulWidget {
  @override
  _MakeUpState createState() => _MakeUpState();
}

class _MakeUpState extends State<MakeUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: new AppBar(title: new Text("MakeUp Institutes"),backgroundColor: Colors.grey[900],
          leading:  Container(
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
          ),),
        body: Stack(children: <Widget>[getListView()],)
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
            leading: Image.asset('images/Pearl-academy.png',height: 100,width: 80),
            title:Text("Pearl Academy"),
            subtitle: Text("drama makeup, hairstyling, beauty makeup, massage, mani pedi"),
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
            leading: Image.asset('images/Pooja.jpg',height: 100,width: 80),
            title:Text("Pooja's Beauty Academy"),
            subtitle: Text("Hair, personal grooming, makeup,beauty therapy,salon management and ownership courses"),
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
            leading: Image.asset('images/MakeupStu.png',height: 100,width: 80),
            title:Text("Make-Up Studio"),
            subtitle: Text("Hairstyling and advance makeup , airbrush makeup, intensive hairstyling course"),
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
            leading: Image.asset('images/IWP.png',height: 100,width: 80),
            title:Text("IWP Janakpuri Delhi"),
            subtitle: Text("Fashion Designing, Dress Designing, Beauty & Makeup"),
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
            leading: Image.asset('images/makeuup.PNG',height: 100,width: 80),
            title:Text("Make U Up Makeup Studio & Academy "),
            subtitle: Text("Makeup and hairstylist courses"),
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
            leading: Image.asset('images/fat mu.png',height: 100,width: 80),
            title:Text("Fat Mu Pro Makeup school"),
            subtitle: Text("makeup, fashion & beauty, non pro makeup, intro makeup"),
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
            leading: Image.asset('images/shahnaz.png',height: 100,width: 80),
            title:Text("Shahnaz Husain International Beauty Academy"),
            subtitle: Text("beautician courses, diploma with international standards"),
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
            leading: Image.asset('images/shahnaz.png',height: 100,width: 80),
            title:Text("Shahnaz Husain International Beauty Academy"),
            subtitle: Text("beautician courses, diploma with international standards"),
          ),
        ),
      ]
  );
  return listView;
}

