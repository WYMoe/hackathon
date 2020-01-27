import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'home_screen.dart';
import 'guide_screen.dart';
import 'places_screen.dart';


class Parent extends StatefulWidget {

  @override
  _ParentState createState() => new _ParentState();
}

class _ParentState extends State<Parent> {
  int _currentTabIndex = 0;





//  List<IconData> _icons = [
//    FontAwesomeIcons.plane,
//    FontAwesomeIcons.bed,
//    FontAwesomeIcons.walking,
//    FontAwesomeIcons.biking
//  ];
//  var _slectedIcon = 0;
//
//  Widget _buildIcon(int index){
//    return GestureDetector(
//
//      onTap: (){
//        setState(() {
//          _slectedIcon = index;
//
//        });
//      },
//      child:  Container(
//          height: 60.0,
//          width: 60.0,
//
//
//          decoration: BoxDecoration(
//              color: _slectedIcon== index ? Theme.of(context).accentColor:Color(0xFFE7EBEE),
//              borderRadius: BorderRadius.circular(30.0)
//          ) ,
//          child: Icon(
//            _icons[index],size: 25.0,color: _slectedIcon== index ? Theme.of(context).primaryColor:Color(0xFFB4C1C4),
//
//
//        )
//    ));
//  }

  @override
  Widget build(BuildContext context) {

    final _kTabPages = <Widget>[
      HomeScreen(),
      PlacesScreen(),
      GuideScreen()

    ];

    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.archway,
           ),
          title: SizedBox.shrink()      ),

      BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.globe,
            ),
          title: SizedBox.shrink()
      ),


      BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.atlas,
            ),
          title: SizedBox.shrink()
      )
    ];

    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _kBottmonNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return new Scaffold(
   //  backgroundColor: Theme.of(context).accentColor,

      body: _kTabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}

