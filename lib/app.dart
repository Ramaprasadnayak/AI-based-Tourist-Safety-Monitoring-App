import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:safeyatra/features/home_screen.dart';
import 'package:safeyatra/providers/theme_provider.dart';
import 'package:safeyatra/themes/dark_theme.dart';
import 'package:safeyatra/themes/light_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final themeProvider =Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.themeMode,
      home:Padding(
        padding: const EdgeInsets.all(8.0),
        child: HomeScreen(),
      ),
    );
  }
}