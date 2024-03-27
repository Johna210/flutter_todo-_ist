import 'package:flutter/material.dart';
import 'package:todo_list/screens/starting.dart';

import 'package:google_fonts/google_fonts.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(241, 0, 100, 177),
);

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(241, 0, 100, 177),
    primary: const Color.fromARGB(241, 0, 100, 177),
    onPrimary: const Color.fromARGB(247, 240, 248, 255),
  ),
  textTheme: GoogleFonts.itimTextTheme(),
  dividerTheme: const DividerThemeData(
    color: Color.fromARGB(255, 194, 191, 191),
  ),
  dialogTheme: const DialogTheme(
    backgroundColor: Color.fromARGB(247, 240, 248, 255),
  ),
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
  cardTheme: const CardTheme().copyWith(
    color: kColorScheme.secondaryContainer,
  ),
  dropdownMenuTheme: const DropdownMenuThemeData().copyWith(
    textStyle: TextStyle(color: kColorScheme.primary, fontSize: 20),
    menuStyle: MenuStyle(
      backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white),
      surfaceTintColor:
          MaterialStateColor.resolveWith((states) => Colors.white),
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
