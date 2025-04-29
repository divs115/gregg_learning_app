import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// #B59E7D - Tobacco
// Color.fromARGB(255, 181, 158, 125)

// #F1EADA - Vanilla
// Color.fromARGB(255, 241, 234, 218)

// #584738 - Mahogany
// Color.fromARGB(255, 88, 71, 56)

// #AAA396 - Mountain
// Color.fromARGB(255, 170, 163, 150)

// #CEC1A8 - Sand
// Color.fromARGB(255, 206, 193, 168)

// #9C3842 - Cordovan
// Color.fromARGB(156, 56, 66)

const tobacco = Color.fromARGB(255, 181, 158, 125);
const vanilla = Color.fromARGB(255, 241, 234, 218);
const mahogany = Color.fromARGB(255, 88, 71, 56);
const mountain = Color.fromARGB(255, 170, 163, 150);
const sand = Color.fromARGB(255, 206, 193, 168);
const cordovan = Color.fromARGB(255, 156, 56, 66);

ThemeData myTheme = ThemeData(
  colorScheme: const ColorScheme(
    // brightness: Brightness.light,
    // primary: tobacco,
    // onPrimary: mahogany,
    // secondary: mahogany,
    // onSecondary: sand,
    // error: cordovan,
    // onError: vanilla,
    // surface: tobacco,
    // onSurface: mahogany,
    brightness: Brightness.light,
    primary: Color.fromARGB(255, 77, 52, 17),
    onPrimary: Color.fromARGB(255, 193, 214, 153),
    secondary: Color.fromARGB(255, 219, 125, 70),
    onSecondary: Color.fromARGB(255, 18, 107, 46),
    error: cordovan,
    onError: Color.fromARGB(255, 57, 22, 139),
    surface: Color.fromARGB(255, 37, 124, 158),
    onSurface: Color.fromARGB(255, 158, 43, 101),
  ),
  textTheme: GoogleFonts.kalniaTextTheme(),
  appBarTheme: AppBarTheme(titleTextStyle: GoogleFonts.kreon(fontSize: 20)),
  inputDecorationTheme: const InputDecorationTheme(
    border: UnderlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(0, 169, 224, 1.0)),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(0, 224, 67, 1)),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(0, 224, 67, 1)),
    ),
  ),
);
