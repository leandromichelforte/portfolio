import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/views/scaffold.view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      title: 'LF Dev',
      theme: ThemeData(
        textTheme: GoogleFonts.rajdhaniTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      home: ScaffoldView(),
    );
  }
}
