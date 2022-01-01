import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  //runApp(const MaterialApp(home: Text("Hello")));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // add();
    // add(a: 40);
    // add(a: 20, b: 40);
    // sub(bag: true, b: 25); --> // Now it is compulsory to pass the argument here

    return MaterialApp(
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: "/home",
      routes: {
        "/": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "login": (context) => LoginPage(),
      },
    );
  }

  // add({int a = 0, int b = 0}) {}
  // sub({required bool bag, int b = 0}) {}
}
