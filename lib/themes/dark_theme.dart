import 'package:flutter/material.dart';
import 'package:safeyatra/themes/app_colors.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,

  // Background
  scaffoldBackgroundColor: AppColors.darkBackground1,

  // AppBar
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.darkBackground1,
    foregroundColor: AppColors.darkText,
  ),
  dropdownMenuTheme: DropdownMenuThemeData(
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkBackground2,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.darkText, width: 1),
      ),
    ),
    menuStyle: MenuStyle(
      backgroundColor: WidgetStatePropertyAll(AppColors.darkBackground2),
    ),
  ),
  // Card
  cardTheme: CardThemeData(
    color: AppColors.darkBackground2,
    elevation: 0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  ),

  // Icons
  iconTheme: const IconThemeData(color: AppColors.primaryLight),

  // Outlined Button
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      foregroundColor: const WidgetStatePropertyAll(AppColors.primaryLight),
      side: const WidgetStatePropertyAll(
        BorderSide(color: AppColors.primaryLight, width: 2),
      ),
    ),
  ),

  // TextField / Input
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: AppColors.darkInputBackground,

    hintStyle: const TextStyle(color: AppColors.darkHintText),

    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.darkInputBorder, width: 1),
    ),

    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(color: AppColors.primaryLight, width: 1),
    ),

    prefixIconColor: AppColors.darkHintText,
    suffixIconColor: AppColors.darkSecondaryIcon,
  ),

  // Text
  textTheme: const TextTheme(bodyMedium: TextStyle(color: AppColors.darkText)),

  // Bottom Navigation
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.darkBackground1,

    selectedIconTheme: IconThemeData(color: AppColors.primaryLight),

    unselectedIconTheme: IconThemeData(color: AppColors.darkText),

    unselectedItemColor: AppColors.darkText,
  ),
);
