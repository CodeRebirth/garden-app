import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui/widget/customchip.dart';
import 'package:ui/widget/heading.dart';
import 'package:ui/widget/card_gen_factory.dart';
import 'package:ui/widget/slider.dart';

import 'screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Garden App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: GoogleFonts.poppins().fontFamily,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: Colors.white, unselectedItemColor: Colors.black, elevation: 0, selectedItemColor: Colors.green[900]),
          iconTheme: IconThemeData(color: Colors.green[900]),
          textTheme: TextTheme(displaySmall: TextStyle(color: Colors.green.shade900, fontSize: 10, fontWeight: FontWeight.bold))),
      home: const MyHomePage(title: 'Garden'),
    );
  }
}
