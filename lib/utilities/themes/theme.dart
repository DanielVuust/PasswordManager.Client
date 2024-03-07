import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.amber,
      primaryColor: Colors.purple,
      scaffoldBackgroundColor: const Color.fromARGB(255, 61, 61, 61),
      fontFamily: 'Raleway',
      cardColor: Color.fromARGB(193, 198, 198, 198),
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: Colors.purple,
      ),
    );
  }
}
