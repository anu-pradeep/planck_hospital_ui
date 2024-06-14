import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPageCard extends StatefulWidget {
  const SearchPageCard({
    super.key,
    required this.textOne,
    required this.textTwo,
    required this.textThree,
    required this.ElevatedText,
  });
  final String textOne;
  final String textTwo;
  final String textThree;
  final String ElevatedText;

  @override
  State<SearchPageCard> createState() => _SearchPageCardState();
}

class _SearchPageCardState extends State<SearchPageCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.grey[300],
                  radius: 35,
                  child:
                      const Icon(
                    Icons.add_home,
                    color: Colors.black54,
                    size: 35,
                  )),
              title: Text(
                widget.textOne,
                style: GoogleFonts.aBeeZee(color: Colors.grey, fontSize: 12),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(right: 40, top: 02, bottom: 05),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 08, bottom: 08, right: 70),
                      child: Text(
                        widget.textTwo,
                        style: GoogleFonts.aBeeZee(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 60,
                      ),
                      child: Text(
                        widget.textThree,
                        style: GoogleFonts.aBeeZee(
                            color: Colors.grey, fontSize: 9),
                      ),
                    ),
                  ],
                ),
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[400],
                    shape: const RoundedRectangleBorder()),
                child: Text(
                  widget.ElevatedText,
                  style: GoogleFonts.aBeeZee(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
