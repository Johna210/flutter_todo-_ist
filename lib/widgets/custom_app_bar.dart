import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

PreferredSizeWidget customAppbar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    foregroundColor: const Color.fromARGB(241, 0, 100, 177),
    backgroundColor: Colors.white,
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back_ios),
      iconSize: 30,
      color: const Color.fromARGB(241, 0, 100, 177),
    ),
    title: Text(
      'My Todo-List',
      style: GoogleFonts.itim(),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu),
        iconSize: 30,
      )
    ],
  );
}
