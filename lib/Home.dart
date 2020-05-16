import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{
  AnimationController animController;
  Animation carouselAnimation;

  _HomeState(){
    animController=new AnimationController(duration: Duration(milliseconds: 6000),vsync: this);
    carouselAnimation=IntTween(begin: 0,end: products.length-1).animate(animController)
      ..addListener(() {
        setState(() {
          currentIndex=carouselAnimation.value;
        });
      });
    animController.repeat();
  }
  final List<List<String>> products = [
    ['images/model-1.jpg'],
    ['images/model-2.jpg'],
    ['images/model-3.jpg'],
    ['images/model-4.jpg']
  ];
  int currentIndex = 0;

  void next() {
    setState(() {
      if (currentIndex < products.length - 1) {
        currentIndex++;
      } else {
        currentIndex = currentIndex;
      }
    });
  }

  void prev() {
    setState(() {
      if (currentIndex > 0) {
        currentIndex--;
      } else {
        currentIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
//            GestureDetector(
//              onHorizontalDragEnd: (DragEndDetails details) {
//                if (details.velocity.pixelsPerSecond.dx > 0) {
//                  prev();
//                } else if (details.velocity.pixelsPerSecond.dx < 0) {
//                  next();
//                }
//              },
            Container(
              height: 500,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(products[currentIndex][0]),
                      fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
//            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Categories", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text("All")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeCategory(image: 'images/Hair1.jpg',title: 'Hair'),
                        makeCategory(image: 'images/artistry.jpg',title: 'Artistry'),
                        makeCategory(image: 'images/ayurveda.jpg',title: 'Ayurveda'),
                        makeCategory(image: 'images/nutrition.jpg',title: 'Nutrition'),
                        makeCategory(image: 'images/therapy.jpg',title: 'Beauty'),
                        makeCategory(image: 'images/nail.jpg',title: 'Nail Art'),
                      ],
                    ),
                  ),
                  SizedBox(height: 40,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Courses", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text("All")
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeCategory(image: 'images/Hair1.jpg',title: 'Hair'),
                        makeCategory(image: 'images/artistry.jpg',title: 'Artistry'),
                        makeCategory(image: 'images/ayurveda.jpg',title: 'Ayurveda'),
                        makeCategory(image: 'images/nutrition.jpg',title: 'Nutrition'),
                        makeCategory(image: 'images/therapy.jpg',title: 'Beauty'),
                        makeCategory(image: 'images/nail.jpg',title: 'Nail Art'),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget makeCategory({image, title}){
    return
      AspectRatio(
        aspectRatio: 2 / 2,
        child: Container(
          margin: EdgeInsets.only(right:20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image:
                  AssetImage(image),
                  fit: BoxFit.cover
              )),
          child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.8),
                        Colors.black.withOpacity(.0),
                      ]
                  )
              ),
              child:
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12),),
              )
          ),
        ),
      );
  }
}
