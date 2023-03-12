import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'splash_screen/view/splash_screen.dart';

class Naive extends StatelessWidget {
  const Naive({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.roboto().fontFamily),
      home: SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
