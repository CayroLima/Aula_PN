import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData temaPadrao(bool isDark) {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(213, 79, 0, 148),
      brightness: isDark ? Brightness.dark : Brightness.light,
    ),
    textTheme: TextTheme(
      titleMedium: GoogleFonts.bitter(),
      titleLarge: GoogleFonts.bitter(fontSize: 40, fontWeight: FontWeight.w700),
      titleSmall: GoogleFonts.bitter(),
      bodyLarge: GoogleFonts.montserrat(),
      bodySmall: GoogleFonts.openSans(),
      bodyMedium: GoogleFonts.montserrat(),
    ),
  );
}
