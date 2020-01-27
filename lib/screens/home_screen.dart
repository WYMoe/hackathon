import 'package:flutter/material.dart';
import 'package:ui_practice/widgets/destination_carousel.dart';
import 'destination_screen.dart';
import 'package:ui_practice/widgets/foreign_destination_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 120.0),
                child: Text("What would you like to find?",style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Raleway',
                ),),
              ),
              SizedBox(height: 20,)
              ,
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: const EdgeInsets.only(left: 10.0),
                  height: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFFD6EAF8
                      )
                  ),
                  child: Center(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,
                          //  color: Colors.blueAccent.withOpacity(0.7),
                        ),

                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              DestinatonCarousel(),
              SizedBox(height: 20,),
              ForeignDestinatonCarousel()

            ],
          ),
        ));
  }
}
