import 'package:flutter/material.dart';
import 'package:hospital_ui/ui%20designs/Calender%20page.dart';
import 'package:hospital_ui/ui%20designs/home%20page.dart';
import 'package:hospital_ui/ui%20designs/search%20page.dart';

class bottomnavigation extends StatefulWidget {
  static const List<Widget> _widgetOptions = <Widget>[
    SearchPage(),HomePage(),CalenderPage()
   ];

  @override
  State<bottomnavigation> createState() => _bottomnavigationState();
}

class _bottomnavigationState extends State<bottomnavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar Demo'),
      ),
      body: Center(
        child: bottomnavigation._widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

}