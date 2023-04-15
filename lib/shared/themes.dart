import 'package:flutter/material.dart';
/// Contains styles for dark and light theme
class MyThemes {
  /// Dark theme 🌜
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black45,
    colorScheme:  const ColorScheme.dark(),
  useMaterial3: true
  );

  ///Light theme ☀️
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black54,
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.red,
      titleTextStyle: TextStyle(color: Colors.white),
      iconTheme: IconThemeData(
        color: Colors.black
      ),

    ),
    colorScheme:const ColorScheme.light(),
  );

}