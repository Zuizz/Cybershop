import 'dart:ui';

import 'package:flutter/material.dart';


class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
    primarySwatch: Colors.deepPurple,
    fontFamily: 'poppins',
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );

  static Color creamColor = const Color(0xfff5f5f5);
  static Color Blueish = const Color(0xfff403b58);
}