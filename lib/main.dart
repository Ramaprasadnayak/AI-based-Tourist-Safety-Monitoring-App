import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:safeyatra/app.dart';
import 'package:safeyatra/providers/theme_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  runApp(
    // MyApp()
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider())
      ],
      child: MyApp(),
    ),
  );
}