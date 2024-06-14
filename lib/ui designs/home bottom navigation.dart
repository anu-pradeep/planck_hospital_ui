// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hospital_ui/ui%20designs/Calender%20page.dart';
// import 'package:hospital_ui/ui%20designs/home%20page.dart';
// import 'package:hospital_ui/ui%20designs/search%20page.dart';
//
// class BottomNavigCustom extends StatefulWidget {
//   @override
//   State<BottomNavigCustom> createState() => _BottomNavigCustomState();
// }
//
// class _BottomNavigCustomState extends State<BottomNavigCustom> {
//   int index = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//           child: Text(
//         "Hospital UI with bottom navigationbar",
//         style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
//       )),
//       bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Colors.white,
//           selectedItemColor: Colors.red,
//           unselectedItemColor: Colors.grey,
//           currentIndex: index,
//           showUnselectedLabels: false,
//           showSelectedLabels: false,
//           type: BottomNavigationBarType.fixed,
//           onTap: (tapindex) {
//             setState(() {
//               index = tapindex;
//             });
//           },
//           items: [
//             BottomNavigationBarItem(
//               icon: IconButton(
//                 onPressed: () {
//                   Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const HomePage()));
//                 },
//                 icon: const Icon(Icons.home),
//               ),
//               label: "home",
//             ),
//             BottomNavigationBarItem(
//                 icon: IconButton(
//                   onPressed: () {
//                     Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const SearchPage()));
//                   },
//                   icon: const Icon(Icons.search),
//                 ),
//                 label: "home"),
//             BottomNavigationBarItem(
//                 icon: IconButton(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const CalenderPage()));
//                   },
//                   icon: const Icon(Icons.calendar_today),
//                 ),
//                 label: "home")
//           ]),
//     );
//   }
// }
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