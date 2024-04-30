import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData temaPadrao() {
  return ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromARGB(255, 165, 73, 240),
        brightness: Brightness.dark),
    textTheme: TextTheme(
      titleMedium: GoogleFonts.openSans(),
      titleLarge:
          GoogleFonts.openSans(fontSize: 40, fontWeight: FontWeight.w700),
      titleSmall: GoogleFonts.openSans(),
      bodySmall: GoogleFonts.openSans(),
      bodyMedium: GoogleFonts.openSans(),
      bodyLarge: GoogleFonts.openSans(),
      headlineLarge: GoogleFonts.openSans(),
      headlineMedium: GoogleFonts.openSans(),
      headlineSmall: GoogleFonts.openSans(),
      
    ),
  );
}
