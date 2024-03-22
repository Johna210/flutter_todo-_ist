import 'package:flutter/material.dart';
import 'package:todo_list/screens/starting.dart';

import 'package:google_fonts/google_fonts.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(241, 0, 100, 177),
    primary: const Color.fromARGB(241, 0, 100, 177),
    onPrimary: const Color.fromARGB(247, 240, 248, 255),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: TextButton.styleFrom(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 65, vertical: 14),
    ),
  ),
);

void main() {
  runApp(
    MaterialApp(
      theme: theme,
      home: const StartScreen(),
    ),
  );
}
