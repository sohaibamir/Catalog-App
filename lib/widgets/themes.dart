import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get darkTheme => ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.black,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.amberAccent),
        titleTextStyle:
            GoogleFonts.poppins(fontSize: 20, color: Colors.amberAccent),
      ),
      fontFamily: GoogleFonts.poppins().fontFamily);

  static ThemeData get whiteBlackTheme => ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.black,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: GoogleFonts.poppins(fontSize: 20, color: Colors.white),
      ),
      fontFamily: GoogleFonts.poppins().fontFamily);

  //Colors
  static Color creamColor = const Color(0xfff5f5f5);
  static Color darkBluishColor = const Color(0xff403b58);
}
