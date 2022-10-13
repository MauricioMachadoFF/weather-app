import 'package:flutter/material.dart';

class CustomTheme {
  ThemeData theme = ThemeData(
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w500,
        fontSize: 140,
        letterSpacing: -2.5,
      ),
      headline1: TextStyle(
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w200,
        fontSize: 86,
        letterSpacing: -1.5,
      ),
      headline2: TextStyle(
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w200,
        fontSize: 54,
        letterSpacing: -0.5,
      ),
      headline3: TextStyle(
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w400,
        fontSize: 43,
        letterSpacing: 0,
      ),
      headline4: TextStyle(
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w400,
        fontSize: 31,
        letterSpacing: 0.25,
      ),
      headline5: TextStyle(
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w400,
        fontSize: 22,
        letterSpacing: 0,
      ),
      bodyText1: TextStyle(
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0,
      ),
      bodyText2: TextStyle(
        fontFamily: 'WorkSans',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: 0,
      ),
    ),
  );
}
