
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital_ui/Custom%20cards.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Schedule",
          style: GoogleFonts.aBeeZee(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.red[400],
                            shape: const RoundedRectangleBorder(),
                            fixedSize: const Size(220, 50)),
                        child: Text(
                          "Today",
                          style: GoogleFonts.aBeeZee(color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            shape: const RoundedRectangleBorder(),
                            fixedSize: const Size(220, 50)),
                        child: Text(
                          "Upcoming",
                          style: GoogleFonts.aBeeZee(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Nearest Visit",
                      style: GoogleFonts.aBeeZee(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 05),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverList(
              delegate: SliverChildListDelegate(
                [
                  const Customcardz(
                    networkImage:
                        "https://cdn-icons-png.flaticon.com/256/3135/3135768.png",
                    cardtext1: "Dr Christ Mair",
                    cardtext2: "Cardiologist | ",
                    cardtext3: "Fortis Hospital",
                    date: "10/05/2021",
                    time: "10.21 Am",
                    confirmtext: "Confirmed",
                    ElevatedText1: "Cancel",
                    ElevatedText2: "Reschedule",
                  ),
                  const SizedBox(height: 10),
                  const Customcardz(
                    networkImage:
                        "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                    cardtext1: "Martin Lipshutz",
                    cardtext2: "Cardiologist | ",
                    cardtext3: "Fortis Hospital",
                    date: "10/05/2021",
                    time: "10.21 Am",
                    confirmtext: "Confirmed",
                    ElevatedText1: "Cancel",
                    ElevatedText2: "Reschedule",
                  ),
                  const SizedBox(height: 10),
                  const Customcardz(
                    networkImage:
                        "https://cdn-icons-png.flaticon.com/256/3135/3135768.png",
                    cardtext1: "Dr Christ Mair",
                    cardtext2: "Cardiologist | ",
                    cardtext3: "Fortis Hospital",
                    date: "10/05/2021",
                    time: "10.21 Am",
                    confirmtext: "Confirmed",
                    ElevatedText1: "Cancel",
                    ElevatedText2: "Reschedule",
                  ),
                  const SizedBox(height: 10),
                  const Customcardz(
                    networkImage:
                        "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                    cardtext1: "Martin Lipshutz",
                    cardtext2: "Cardiologist | ",
                    cardtext3: "Fortis Hospital",
                    date: "10/05/2021",
                    time: "10.21 Am",
                    confirmtext: "Confirmed",
                    ElevatedText1: "Cancel",
                    ElevatedText2: "Reschedule",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}





















// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hospital_ui/ui%20designs/Custom%20cards.dart';
//
// void main() {
//   runApp(const MaterialApp(
//     home: CalenderPage(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
//
// class CalenderPage extends StatelessWidget {
//   const CalenderPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.blue,
//       appBar: AppBar(
//         title: Text(
//           "Schedule",
//           style: GoogleFonts.aBeeZee(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 25, right: 05),
//             child: Row(
//               children: [
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: TextButton.styleFrom(
//                       backgroundColor: Colors.red[400],
//                       shape: const RoundedRectangleBorder(),
//                       fixedSize: const Size(220, 50)),
//                   child: Text(
//                     "Today",
//                     style: GoogleFonts.aBeeZee(color: Colors.white),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {},
//                   style: TextButton.styleFrom(
//                       shape: const RoundedRectangleBorder(),
//                       fixedSize: const Size(220, 50)),
//                   child: Text(
//                     "Upcoming",
//                     style: GoogleFonts.aBeeZee(color: Colors.black),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 360),
//             child: Text(
//               "Nearest Visit",
//               style: GoogleFonts.aBeeZee(
//                   color: Colors.black,
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           const Customcardz(
//               networkImage:"https://cdn-icons-png.flaticon.com/256/3135/3135768.png",
//               cardtext1: "Dr Christ Mair",
//               cardtext2: "Cardiologist | ",
//               cardtext3: "Fortis Hospital",
//               date: "10/05/2021",
//               time: "10.21 Am",
//               confirmtext: "Confirmed",
//               ElevatedText1: "Cancel",
//               ElevatedText2: "Reschedule"),
//           const SizedBox(width: 20),
//           const Customcardz(
//               networkImage: "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
//               cardtext1: "Martin Lipshutz",
//               cardtext2: "Cardiologist | ",
//               cardtext3: "Fortis Hospital",
//               date: "10/05/2021",
//               time: "10.21 Am",
//               confirmtext: "Confirmed",
//               ElevatedText1: "Cancel",
//               ElevatedText2: "Reschedule"),
//           const SizedBox(width: 20,),
//
//
//
//
//         ],
//       ),
//     );
//   }
// }