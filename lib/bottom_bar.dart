import 'package:flutter/material.dart';
import 'package:hr_project/histori_page.dart';
import 'package:hr_project/home_page.dart';
import 'package:hr_project/profile_page.dart';

class BottomBar extends StatefulWidget {
  static var tag;

  BottomBar({Key key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    HistoriPage(),
    ProfilePage(),
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
         child: _widgetOptions.elementAt(_selectedIndex),
       ),
       bottomNavigationBar: BottomNavigationBar(
         items: const <BottomNavigationBarItem>[
           BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30,),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history, size: 30,),
            title: Text('Histori'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline, size: 30,),
            title: Text('Profile'),
          ),
         ],
         currentIndex: _selectedIndex,
        selectedFontSize: 14,
        selectedItemColor: Colors.redAccent,
        onTap: _onItemTap,
        ),
    );
  }
}