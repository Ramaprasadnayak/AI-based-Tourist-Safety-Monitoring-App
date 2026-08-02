import 'package:flutter/material.dart';
import 'package:safeyatra/features/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    // final themeProvider =Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: lightTheme,
      // darkTheme: darkTheme,
      // themeMode: themeProvider.themeMode,
      home:HomeScreen(),
    );
  }
}