import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clonee/core/constants.dart';

class AppBar_widget extends StatelessWidget {
  const AppBar_widget({super.key, required this.appbarTitle});

  final String
      appbarTitle; // any whare call appbar widget should pass appbar title there itself

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        spacing: 15,
        children: [
          Text(appbarTitle,
              style: GoogleFonts.montserrat()
                  .copyWith(fontSize: 30, fontWeight: FontWeight.w900)),

          Icon(
            Icons.cast_connected,
            color: Colors.white,
            size: 30,
          ),

          Container(
            width: 30,
            height: 30,
            color: Colors.blue,
          ),
         // set width with constants page element varable
        ],
      ),
    );
  }
}
