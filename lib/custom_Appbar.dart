import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class AppbarCustom extends StatefulWidget implements PreferredSizeWidget{
  const AppbarCustom({super.key});

  @override
  State<AppbarCustom> createState() => _AppbarCustomState();

  @override
 
  Size get preferredSize => Size.fromHeight(150);

}

class _AppbarCustomState extends State<AppbarCustom> {
  @override
  Widget build(BuildContext context) {
    return
      AppBar(
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 320),
                child: Text(
                  "Current location",
                  style: GoogleFonts.aBeeZee(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[400]),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_rounded,
                    color: Colors.orange,
                    size: 12,
                  ),
                  Text(
                    "Dighalia,khulna",
                    style: GoogleFonts.aBeeZee(
                        fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
          actions: const [
            Image(
              image: NetworkImage(
                  "https://png.pngtree.com/png-clipart/20221231/original/pngtree-cartoon-style-male-user-profile-icon-vector-illustraton-png-image_8836451.png"),
            )
          ],
          bottom: AppBar(
            backgroundColor: Colors.white,
            title: TextFormField(
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.search_rounded,
                  size: 15,
                ),
                hintText: "Search your clinic",hintStyle: GoogleFonts.aBeeZee(color: Colors.grey[400],fontSize: 10),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 05, vertical: 03),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
              ),
            ),
              ));
  }
}
