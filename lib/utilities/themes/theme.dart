import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primarySwatch: Colors.green,
      primaryColor: Colors.purple,
      scaffoldBackgroundColor: const Color.fromARGB(255, 61, 61, 61),
      fontFamily: 'Raleway',
      cardColor: Color.fromARGB(228, 170, 170, 170),
      buttonTheme: ButtonThemeData(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
        buttonColor: Colors.purple,
      ),
    );
  }
}
