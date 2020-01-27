import 'package:flutter/material.dart';
import 'package:ui_practice/models/destination_model.dart';
import 'package:ui_practice/screens/destination_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinatonCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return           Column(

      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Local Places for this season",style: TextStyle(
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
              itemCount: destinations.length ,
              itemBuilder: (BuildContext context,int index){
                Destination destination = destinations[index];
                return GestureDetector(
                  onTap: (){
                    var route = new MaterialPageRoute(builder: (BuildContext context){
                      return new DestinationScreen(destination: destination,);
                    });
                    Navigator.of(context).push(route);
                  },
                  child: Hero(
                    tag: destination.imageUrl,
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
           //       color: Colors.red,
                      height: 220.0,
                      width: 210.0,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Positioned(
                            bottom:15.0,
                            child: Container(
                              width: 200.0,
                              height:120.0 ,

                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,


                                  children: <Widget>[
                                    Text(
                                      "${destination.activities.length} Festivals",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17.0,
                                        fontFamily: 'Raleway',
                                      ),
                                    ),
                                    Text(
                                      "${destination.description}",
                                      style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Raleway',
                                      ),
                                    )

                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0
                                )

                              ]
                            ),
                            child: Stack(
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                    destination.imageUrl,
                                    height: 180.0,
                                    width: 180.0,
                                    fit: BoxFit.cover,
                                ),

                                ),
                                Positioned(
                                  left: 5.5,
                                  bottom: 5.5,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(destination.city,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            letterSpacing: 1.2,
                                            fontFamily: 'Raleway',
                                          ),),
                                        Row(
                                          children: <Widget>[
                                            Icon(
                                              FontAwesomeIcons.locationArrow,
                                              size: 10.0,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 5.0),
                                            Text(
                                              destination.country,
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        )

                                      ],
                                    ),
                                  ),
                                )

                              ],
                            ),
                          )
                        ],
                      ),

                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );

  }
}
