import 'package:flutter/material.dart';
import 'package:totem_ipes/theme/theme_colors.dart';

ThemeData Mytheme = ThemeData(
  primaryColor: Color.fromARGB(0, 8, 1, 112),
  brightness: Brightness.light,
  fontFamily: 'Relaway',
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: 16),
    bodyLarge: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.normal,
    ),
  ),
);
