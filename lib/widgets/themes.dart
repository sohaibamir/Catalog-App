import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData get lightTheme => ThemeData(
      // primarySwatch: Colors.deepPurple,
      cardColor: Colors.white,
      canvasColor: creamColor,
      // ignore: deprecated_member_use
      buttonColor: darkBluishColor,

      // ignore: deprecated_member_use
      accentColor: darkBluishColor,
      primaryColor: Colors.black,
      shadowColor: Colors.black38,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        color: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: GoogleFonts.poppins(fontSize: 20, color: Colors.black),
      ),
      fontFamily: GoogleFonts.poppins().fontFamily);

  static ThemeData get darkTheme => ThemeData(
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      // ignore: deprecated_member_use
      buttonColor: lightBluishColor,
      // ignore: deprecated_member_use
      accentColor: Colors.white,
      primaryColor: Colors.white,
      shadowColor: Colors.grey[300],
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
  static Color darkCreamColor = Vx.gray900;
  static Color darkBluishColor = const Color(0xff403b58);
  static Color lightBluishColor = Vx.indigo400;
  static Color royalBlue = const Color(0xff002e7c);
}
