import 'package:flutter/material.dart';

class AppThemes{
  static final Color primaryColor =  Color(0xff39A552) ;

  static ThemeData lightTheme = ThemeData(
    cardColor: Colors.white,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 30,
          fontFamily: "Missiri"
      ),
      titleMedium: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 25,
          fontFamily: "Missiri"
      ),
      bodyLarge: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 25,
          fontFamily: "Missiri"
      ),
      bodyMedium: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 20,
          fontFamily: "Missiri"
      ),
    ),
    primaryColor: primaryColor,
      appBarTheme:  AppBarTheme(
          backgroundColor: primaryColor,
      ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.white,
      selectedIconTheme: IconThemeData(
        size: 35
      )
    ),
    scaffoldBackgroundColor: Colors.transparent

  );

}