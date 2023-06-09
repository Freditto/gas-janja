import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// const COLOR_PRIMARY = Colors.deepOrangeAccent;
// const COLOR_ACCENT = Colors.orange;
// const COLOR_BACKGROUND_DARK = Color(0xFF171822);
// const COLOR_BACKGROUND = Colors.white;
// const COLOR_BACKGROUND_LIGHT = Color(0xFFF1F3F6);

// ThemeData lightTheme = ThemeData(
//   brightness: Brightness.light,
//   backgroundColor: COLOR_BACKGROUND,
//   primaryColor: COLOR_PRIMARY,
//   cardColor: const Color(0xffF1F3F6),
//   iconTheme: const IconThemeData(
//     color: Color(0xFF3A4276),
//   ),
//   textTheme: TextTheme(
//     button: GoogleFonts.poppins(
//       fontSize: 15,
//       height: 1.6,
//       color: const Color(0xff212330),
//       fontWeight: FontWeight.w600,
//     ),
//     bodyText2: GoogleFonts.poppins(
//       fontSize: 12,
//       color: const Color(0xff1B1D28),
//       fontWeight: FontWeight.w500,
//     ),
//     bodyText1: GoogleFonts.poppins(
//       height: 1.6,
//       fontSize: 12,
//       color: const Color(0xff7b7f9e),
//       fontWeight: FontWeight.w400,
//     ),
//     headline2: GoogleFonts.poppins(
//       fontSize: 24,
//       color: const Color(0xff171822),
//       fontWeight: FontWeight.w600,
//     ),
//     headline3: GoogleFonts.poppins(
//       fontSize: 22,
//       color: const Color(0xff3A4276),
//       fontWeight: FontWeight.w800,
//     ),
//     headline4: GoogleFonts.poppins(
//       fontSize: 15,
//       color: const Color(0xff3A4276),
//       fontWeight: FontWeight.w600,
//     ),
//     headline5: GoogleFonts.poppins(
//       fontSize: 22,
//       color: Colors.black,
//       fontWeight: FontWeight.w600,
//     ),
//     headline6: GoogleFonts.poppins(
//       fontSize: 20,
//       color: Colors.black,
//       fontWeight: FontWeight.w500,
//     ),
//     subtitle1: GoogleFonts.poppins(
//       fontSize: 18,
//       color: Colors.black,
//       fontWeight: FontWeight.w700,
//     ),
//   ),
//   colorScheme:
//       ColorScheme.fromSwatch().copyWith(secondary: COLOR_BACKGROUND_LIGHT),
// );

// ThemeData darkTheme = ThemeData(
//   brightness: Brightness.dark,
//   backgroundColor: COLOR_BACKGROUND_DARK,
//   iconTheme: const IconThemeData(
//     color: Color(0xff7b7f9e),
//   ),
//   cardColor: const Color(0xFF212330),
//   textTheme: TextTheme(
//     bodyText2: GoogleFonts.poppins(
//       fontSize: 12,
//       color: const Color(0xffffffff),
//       fontWeight: FontWeight.w500,
//     ),
//     bodyText1: GoogleFonts.poppins(
//       height: 1.6,
//       fontSize: 12,
//       color: const Color(0xff7b7f9e),
//       fontWeight: FontWeight.w400,
//     ),
//     button: GoogleFonts.poppins(
//       fontSize: 15,
//       height: 1.6,
//       color: const Color(0xff212330),
//       fontWeight: FontWeight.w600,
//     ),
//     headline2: GoogleFonts.poppins(
//       fontSize: 24,
//       color: const Color(0xFFFFFFFF),
//       fontWeight: FontWeight.w600,
//     ),
//     headline3: GoogleFonts.poppins(
//       fontSize: 22,
//       color: const Color(0xFFFFFFFF),
//       fontWeight: FontWeight.w800,
//     ),
//     headline4: GoogleFonts.poppins(
//       fontSize: 15,
//       color: const Color(0xff7b7f9e),
//       fontWeight: FontWeight.w600,
//     ),
//     headline5: GoogleFonts.poppins(
//       fontSize: 22,
//       color: Colors.white,
//       fontWeight: FontWeight.w600,
//     ),
//     headline6: GoogleFonts.poppins(
//       fontSize: 20,
//       color: Colors.white,
//       fontWeight: FontWeight.w500,
//     ),
//     subtitle1: GoogleFonts.poppins(
//       fontSize: 18,
//       color: Colors.white,
//       fontWeight: FontWeight.w700,
//     ),
//   ),
// );


const kActiveTitleText = TextStyle(
  color: Colors.black,
  fontSize: 20.0,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
  height: 1.3,
);
const kInactiveTitleText = TextStyle(
  color: Colors.grey,
  fontSize: 18.0,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
);

const kTitleText = TextStyle(
  color: Colors.black,
  fontSize: 18.0,
  fontFamily: 'RobotoCondensed',
  fontWeight: FontWeight.bold,
);

const kLabelText = TextStyle(
  color: Colors.black87,
  fontSize: 15.0,
  fontFamily: 'Poppins',
  // fontWeight: FontWeight.w300,
);

const kBoxColors = [
  Colors.red,
  Colors.green,
  Colors.blue,
  Colors.cyan,
  Colors.limeAccent,
  Colors.indigo,
  Colors.brown,
  Colors.pink,
  Colors.amber,
  Colors.lightBlue,
  Colors.lightBlueAccent,
  Colors.blueGrey,
  Colors.orange,
  Colors.deepOrange,
  Colors.purple,
  Colors.deepPurple,
];

class AppColor {
  static const kPrimaryColor = Color(0xFF0E4944);
  static const kAccentColor = Color(0xFF9BD35A);
  static const kThirdColor = Color(0xFFDBF4E9);
  static const kForthColor = Color(0xFFB3CDC5);
  static const kBlue = Color(0xFFC5E5F8);

  static const kPlaceholder1 = Color(0xFFD8D8D8);
  static const kPlaceholder2 = Color(0xFFF5F6F8);
  static const kPlaceholder3 = Color(0xFFF4F4F6);

  static const kTextColor1 = Color(0xFFC9C9C9);
  static const kTextColor2 = Color(0xFFDEDEDE);
  static const kTitle = Color(0xFF3B3B3B);
}
