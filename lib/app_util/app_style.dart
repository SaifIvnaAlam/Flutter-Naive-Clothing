import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color cblack = Color(0xff2e3440);
Color scafolldColor = Colors.blueGrey.shade400;

const Color kGrey = Color(0xffa4aaad);
const Color kDarkGrey = Color(0xff878787);
const Color kLightGrey = Color(0xffededed);

const Color kWhite = Color(0xffffffff);

const Color kblack = Color(0xff111111);

const Color cYellow = Color(0xffffd33c);

const double kPaddingHorizonatal = 24.0;

const double kBorderRadius = 12.0;

final kInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(kBorderRadius),
    borderSide: const BorderSide(
      color: kLightGrey,
    ));

final kEncodeSansBold = GoogleFonts.roboto(fontWeight: FontWeight.w700);
final kEncodeSansSemiBold = GoogleFonts.roboto(fontWeight: FontWeight.w600);
final kEncodeSansMedium = GoogleFonts.roboto(fontWeight: FontWeight.w500);
final kEncodeSansRagular = GoogleFonts.roboto(fontWeight: FontWeight.w400);
