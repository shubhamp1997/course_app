import '../main.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fsalonapp/CourseDetailsPage.dart';


class Nutrition extends StatefulWidget {
  @override
  _NutritionState createState() => _NutritionState();
}


Widget listItem (BuildContext context, DocumentSnapshot document){
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
        leading: Image.asset(document['imageName'],height: 100,width: 80),
        title:Text(document['name']),
        subtitle: Text(document['description']),
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
        body: StreamBuilder(
          stream: Firestore.instance.collection('newtest').snapshots(),
          builder:(context, snapshot) {
            if (!snapshot.hasData) return const Text('Loading...');
            return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) =>
                  listItem(context, snapshot.data.documents[index]),
            );
          }
          )
    );
  }
}





//Widget getListView()
//{
//  var listView=ListView(
//      children: <Widget>[
//        listItem('orane.png',
//            "Orane International School of Beauty & Wellness", "Cosmetology,aesthetic , hair , human nutrition and dietetics, spa , beauty"),
//        listItem('ignou.png',
//            "IGNOU - Indira Gandhi National Open University, Ahmedabad",
//            "Diploma in Nutrition and health Education"),
//        listItem('99.png',
//            "99 Studio", "beauty therapy ,makeup ,nail art ,mehndi ,hair ,cosmetology ,skincare, dieting and nutrition Salon management"),
//        listItem('ICS.png',
//            "International Cosmetology School",
//            "beauty, hair, makeup, nail, nutrician, dietician,spa")
//      ]
//  );
//  return listView;
//}
//

