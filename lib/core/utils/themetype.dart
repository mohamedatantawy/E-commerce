import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Colors.green,
      onPrimary: Colors.green,
      secondary: Colors.blue,
      onSecondary: Colors.blue,
      error: Colors.red,
      onError: Colors.red,
      surface: Colors.white,
      onSurface: Colors.white60),
  // fontFamily: poppinsFont,
  textSelectionTheme: TextSelectionThemeData(
      selectionColor: Colors.green.withOpacity(.5),
      selectionHandleColor: Colors.green),
  scaffoldBackgroundColor: Colors.white60,
);
ThemeData theme = ThemeData(
  colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.yellow,
      onPrimary: Colors.yellow,
      secondary: Colors.blue,
      onSecondary: Colors.blue,
      error: Colors.pink,
      onError: Colors.pink,
      surface: Colors.white,
      onSurface: Colors.black),
  // fontFamily: poppinsFont,
  textSelectionTheme: TextSelectionThemeData(
      selectionColor: Colors.yellow.withOpacity(.5),
      selectionHandleColor: Colors.yellow),
  scaffoldBackgroundColor: Colors.transparent,
);
