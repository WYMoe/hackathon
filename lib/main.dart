import 'package:flutter/material.dart';
import 'screens/parent.dart';

void main(){
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Travel UI',
    theme: ThemeData(
        primaryColor: Color(0xFF3EBACE),
        accentColor: Color(0xFFD8ECF1),
        scaffoldBackgroundColor: Color(0xFFEBF5FB)

    ),
    home:Parent() ,

  ));
}



