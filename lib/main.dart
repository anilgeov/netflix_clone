import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_clonee/core/colours/colours.dart';
import 'package:netflix_clonee/presentaions/mainpage/widgets/mainpage_Screen.dart';

void main() {
  runApp(Netflix());
}

class Netflix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        title: 'Flutter demo',
        theme: ThemeData(
          //backgroundColor:Colors.black
          scaffoldBackgroundColor: backgroundColor,
          primarySwatch: Colors.blue,
            fontFamily: GoogleFonts.montserrat().fontFamily,
            textTheme: TextTheme(
              bodyMedium: TextStyle(color: Colors.white,),
              bodySmall: TextStyle(color: Colors.white,),
              bodyLarge: TextStyle(color: Colors.white),
        ),
    ),
    home:Screen_MainPage(),
    );
  }
}
