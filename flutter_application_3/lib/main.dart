import 'package:flutter/material.dart';
import 'package:flutter_application_3/screen/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Ticket Booking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      fontFamily: GoogleFonts.openSans().fontFamily
      ),
      home: HomeScreen(),
    );
  }
}
