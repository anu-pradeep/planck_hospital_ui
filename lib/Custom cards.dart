import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customcardz extends StatefulWidget {
  final String networkImage;
  final String cardtext1;
  final String cardtext2;
  final String cardtext3;
  final String date;
  final String time;
  final String confirmtext;
  final String ElevatedText1;
  final String ElevatedText2;
  const Customcardz(
      {super.key,
      required this.networkImage,
      required this.cardtext1,
      required this.cardtext2,
      required this.cardtext3,
      required this.date,
      required this.time,
      required this.confirmtext,
      required this.ElevatedText1,
      required this.ElevatedText2});

  @override
  State<Customcardz> createState() => _CustomcardzState();
}

class _CustomcardzState extends State<Customcardz> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, top: 10),
      child: Card(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Image(
                  image: NetworkImage(widget.networkImage),
                ),
              ),
              title: Text(
                widget.cardtext1,
                style: GoogleFonts.aBeeZee(),
              ),
              subtitle: Row(
                children: [
                  Text(
                    widget.cardtext2,
                    style: GoogleFonts.aBeeZee(color: Colors.grey),
                  ),
                  Text(
                    widget.cardtext3,
                    style: GoogleFonts.aBeeZee(color: Colors.grey),
                  ),
                ],
              ),
            ),
            const Divider(),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.calendar_month,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(widget.date,
                    style: GoogleFonts.aBeeZee(color: Colors.grey)),
                const SizedBox(
                  width: 15,
                ),
                const Icon(
                  Icons.watch_later_outlined,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  widget.time,
                  style: GoogleFonts.aBeeZee(color: Colors.grey),
                ),
                const SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.red[400],
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(widget.confirmtext,
                    style: GoogleFonts.aBeeZee(color: Colors.grey)),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 08, top: 08),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        shape: const RoundedRectangleBorder(),
                        fixedSize: const Size(170, 50)),
                    child: Text(
                      widget.ElevatedText1,
                      style: GoogleFonts.aBeeZee(
                          fontSize: 15, color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[400],
                        shape: const RoundedRectangleBorder(),
                        fixedSize: const Size(170, 50)),
                    child: Text(
                      widget.ElevatedText2,
                      style: GoogleFonts.aBeeZee(
                          fontSize: 15, color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
