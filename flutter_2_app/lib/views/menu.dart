import 'package:flutter/material.dart';
import 'package:flutter_2_app/views/firebase_list.dart';
import 'package:flutter_2_app/views/home.dart';
import 'package:flutter_2_app/views/profile.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectIndex = 0;
  String title = "Home";
  static const TextStyle optionStyle =
      TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.blue);
  static const List<Widget> _widgetOptions = <Widget>[
    /* Text(
      'Index 0: Home',
      style: optionStyle,
    ), */
    Home(),
    FirebaseList(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectIndex = index;
      switch (_selectIndex) {
        case 0:
          title = "Home";
          break;
        case 1:
          title = "Services";
          break;
        case 2:
          title = "Profile";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[600],
          title: Text(title),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items:  const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Services',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectIndex,
          selectedItemColor: Colors.blue[600],
          onTap: _onItemTapped,
        ));
  }
}
