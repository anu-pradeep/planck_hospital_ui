import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital_ui/SearchpageCard.dart';
import 'package:hospital_ui/custom_Appbar.dart';
// void main(){runApp(MaterialApp(home: SearchPage(),));}
class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppbarCustom(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 280, top: 10),
            child: Text(
              "What are you looking for !",
              style: GoogleFonts.aBeeZee(
                  fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const SearchPageCard(
            textOne: '      Clinics',
            textTwo: '      Book an Appointment',
            textThree: ' 37 clinics are Available',
            ElevatedText: 'Book',
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchPageCard(
            textOne: '     Test & Checkup',
            textTwo: 'Book a Lab Test',
            textThree: '      65 Diagnostics available',
            ElevatedText: 'See all',
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchPageCard(
            textOne: '    Chat & Video call',
            textTwo: '   Book Online Consultant',
            textThree: '205 Doctors are Available',
            ElevatedText: 'View',
          ),
        ],
      ),
    );
  }
}
