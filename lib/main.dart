import 'package:blog_app/constants/color.dart';
import 'package:blog_app/ui/pages/blog_home.dart';
import 'package:blog_app/ui/pages/login.dart';
import 'package:blog_app/ui/pages/registration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: color1, fontFamily: GoogleFonts.inter().fontFamily),
      home: RegistrationScreen(),
    );
  }
}
