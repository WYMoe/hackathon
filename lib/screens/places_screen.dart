import 'package:flutter/material.dart';
import 'package:ui_practice/widgets/places_by_month_carousel.dart';
import 'package:ui_practice/models/places_model.dart';

class PlacesScreen extends StatefulWidget {
  @override
  _PlacesScreenState createState() => new _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: ListView(
            children: <Widget>[
             CarouselByMonth(carouselTitle:"Best Places For Jan",carouselData: februaryCarouselData,),
              CarouselByMonth(carouselTitle: "Best Places For Nov",carouselData: novemberCarouselData,)

            ],
          ),
        ),
      )    );
  }
}
