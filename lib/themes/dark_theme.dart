// dark_theme.dart
import 'package:flutter/material.dart';
import 'package:safeyatra/themes/app_colors.dart';


ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.darkBackground1,
  appBarTheme: AppBarTheme(backgroundColor: AppColors.darkBackground1,foregroundColor: AppColors.darkText),
  cardTheme: CardThemeData(
    color: AppColors.darkBackground2,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  iconTheme: IconThemeData(
    color: Colors.blueAccent
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: WidgetStatePropertyAll(Colors.blue),
      side:WidgetStatePropertyAll(
      BorderSide(
        color: Colors.blue,
        width: 2,
      )
      ),
    ),
  ),
  inputDecorationTheme:InputDecorationTheme(
    filled: true,
    fillColor: AppColors.darkBackground2,
    hintStyle: TextStyle(
      color:  Colors.white60,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color:AppColors.darkBackground1, width: 1),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.darkBackground1, width: 1),
    ),
    prefixIconColor: Colors.white60,
    suffixIconColor: Colors.white60 ,
  ),
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: AppColors.darkText),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.darkBackground1,
    selectedIconTheme: IconThemeData(color: Colors.purple),
    unselectedItemColor:AppColors.darkText,
    unselectedIconTheme:IconThemeData(color: AppColors.darkText)
  ),
);