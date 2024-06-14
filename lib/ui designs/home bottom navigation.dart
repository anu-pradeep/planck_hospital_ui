import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital_ui/ui%20designs/Calender%20page.dart';
import 'package:hospital_ui/ui%20designs/home%20page.dart';
import 'package:hospital_ui/ui%20designs/search%20page.dart';

class BottomNavigCustom extends StatefulWidget {
  @override
  State<BottomNavigCustom> createState() => _BottomNavigCustomState();
}

class _BottomNavigCustomState extends State<BottomNavigCustom> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Hospital UI with bottom navigationbar",
        style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
      )),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.grey,
          currentIndex: index,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          onTap: (tapindex) {
            setState(() {
              index = tapindex;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                icon: const Icon(Icons.home),
              ),
              label: "home",
            ),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SearchPage()));
                  },
                  icon: const Icon(Icons.search),
                ),
                label: "home"),
            BottomNavigationBarItem(
                icon: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CalenderPage()));
                  },
                  icon: const Icon(Icons.calendar_today),
                ),
                label: "home")
          ]),
    );
  }
}
