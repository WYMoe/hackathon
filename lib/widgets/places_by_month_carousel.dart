import 'package:flutter/material.dart';
import 'package:ui_practice/widgets/destination_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_practice/models/destination_model.dart';
import 'package:ui_practice/screens/destination_screen.dart';
import 'package:ui_practice/models/places_model.dart';
class CarouselByMonth extends StatefulWidget {
String carouselTitle;
List<Places> carouselData;

CarouselByMonth({Key key,this.carouselTitle, this.carouselData}): super(key:key);

@override
  _CarouselByMonthState createState() => new _CarouselByMonthState();
}

class _CarouselByMonthState extends State<CarouselByMonth> {
  @override
  Widget build(BuildContext context) {
    return Column(

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(widget.carouselTitle,style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                    fontFamily: 'Raleway',
                  ),),
                  GestureDetector(
                    onTap: () => print('See All'),
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 300.0,
                //    color: Colors.blue,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.carouselData.length ,
                  itemBuilder: (BuildContext context,int index){
                    Places places = widget.carouselData[index];
                    return _buildCard(places.name, '', places.imageURL);
                  },
                ),
              ),
            )
          ],
        )
    ;
  }
  _buildCard(String title, String rating, String imgPath) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: InkWell(
          onTap: () {
//            Navigator.of(context)
//                .push(MaterialPageRoute(builder: (context) => DetailPage()));
          },
          child: Stack(
            children: <Widget>[
              Container(
                height: 275.0,
                width: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover)),
              ),
              //make the shade a bit deeper.
              Container(
                height: 275.0,
                width: 200.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black.withOpacity(0.4)),
              ),
              Positioned(
                top: 10.0,
                left: 10.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 40.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.black.withOpacity(0.2)),
                      child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.star, color: Colors.white, size: 12.0),
                              SizedBox(width: 5.0),
                              Text(
                                rating,
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )),
                    ),
                    SizedBox(width: 50.0),
                    Text(
                      'More',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Opensans'),
                    ),
                    SizedBox(width: 7.0),
                    //this should be an iconbutton in a real app.
                    Icon(Icons.arrow_drop_down, color: Colors.white, size: 25.0)
                  ],
                ),
              ),
              Positioned(
                top: 165.0,
                left: 10.0,
                child: Container(
                  width: 150.0,
                  child: Text(title,
                      style: TextStyle(
                          fontFamily: 'Opensans',
                          fontSize: 17.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w600)),
                ),
              ),
              Positioned(
                  top: 225.0,
                  left: 10.0,
                  child: Row(children: [
                    Text('I was here',
                        style: TextStyle(
                            fontFamily: 'Opensans',
                            fontSize: 15.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                    SizedBox(width: 15.0),
                    Stack(
                      children: <Widget>[
                        Container(height: 40.0, width: 100.0),
                        Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              image: DecorationImage(
                                  image: AssetImage('assets/profilepic.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          left: 30.0,
                          child: Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white),
                            child: Center(
                              child: Text('+17..',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.black)),
                            ),
                          ),
                        )
                      ],
                    )
                  ]))
            ],
          ),
        ));
  }

}
