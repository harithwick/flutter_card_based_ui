import 'package:flutter/material.dart';
import 'package:flutter_card_based_ui/screens/screen_controller.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData _themeData() {
      return ThemeData(
        textTheme: TextTheme(
          headline5: GoogleFonts.aBeeZee(
            color: Colors.teal,
            fontWeight: FontWeight.bold,
          ),
          headline6: GoogleFonts.aBeeZee(
            color: Colors.deepOrange,
          ),
          bodyText1: GoogleFonts.aBeeZee(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
              letterSpacing: 1),
          bodyText2: GoogleFonts.aBeeZee(
            color: Colors.grey[600],
            letterSpacing: 0.7,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Card Based UI',
        home: ScreenController(),
        theme: _themeData());
  }
}
