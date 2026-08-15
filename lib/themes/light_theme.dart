import 'package:flutter/material.dart';
import 'package:safeyatra/themes/app_colors.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,

  // Background
  scaffoldBackgroundColor: AppColors.lightBackground,

  // AppBar
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.lightBackground2,
    foregroundColor: AppColors.lightText,
  ),

  // Card
  cardTheme: CardThemeData(
    color: AppColors.lightBackground2,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),

  // Icons
  iconTheme: const IconThemeData(
    color: AppColors.primary,
  ),

  // Outlined Button
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: const WidgetStatePropertyAll(
        AppColors.primary,
      ),
      side: const WidgetStatePropertyAll(
        BorderSide(
          color: AppColors.primary,
          width: 2,
        ),
      ),
    ),
  ),

  // TextField / Input
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.lightInputBackground,

    hintStyle: const TextStyle(
      color: AppColors.lightHintText,
    ),

    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.lightInputBorder,
        width: 1,
      ),
    ),

    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.primary,
        width: 1,
      ),
    ),

    prefixIconColor: AppColors.lightHintText,
    suffixIconColor: AppColors.lightSecondaryIcon,
  ),

  // Text
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: AppColors.lightText,
    ),
  ),

  // Bottom Navigation
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.lightBackground2,

    selectedIconTheme: IconThemeData(
      color: AppColors.primary,
    ),

    unselectedIconTheme: IconThemeData(
      color: AppColors.lightText,
    ),

    unselectedItemColor: AppColors.lightText,
  ),
);