import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:safeyatra/features/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> register(BuildContext context,TextEditingController usrname,TextEditingController phno,TextEditingController password) async {
  try {
    String apiUrl = dotenv.env["API_URL"]!;
    final response = await http.post(
      Uri.parse("$apiUrl/auth/register"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "username": usrname.text.trim(),
        "phone": phno.text.trim(),
        "password": password.text.trim(),
      }),
    );
    final data = jsonDecode(response.body);
    if (response.statusCode == 200 && data["message"] == "Registration Successful") {
      final String accessToken = data["access_token"];
      final String refreshToken = data["refresh_token"];
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString("access_token", accessToken);
      await prefs.setString("refresh_token", refreshToken);
      await prefs.setString("address", "No address saved yet");
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Registration Successful"),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(data["message"] ?? "Registration Failed"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),
        ),
      );
    }
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Error: $e"), backgroundColor: Colors.red,duration: Duration(seconds: 2)),
    );
  }
}

Future<void> login(BuildContext context,TextEditingController usrname,TextEditingController password) async{
  try{
    String apiUrl = dotenv.env["API_URL"]!;
    final response=await http.post(
      Uri.parse("$apiUrl/auth/login"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "username": usrname.text.trim(),
        "password": password.text.trim()
      })
    );
    final data=jsonDecode(response.body);
    if(response.statusCode==200 && data["message"]=="Login Successful"){
      final String accessToken = data["access_token"];
      final String refreshToken = data["refresh_token"];
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString("access_token", accessToken);
      await prefs.setString("refresh_token", refreshToken);
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Login Successful"),backgroundColor: Colors.green,duration: Duration(seconds: 2))
      );
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
    }
    else {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(data["message"] ?? "incorrect username or password"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),
        ),
      );
    }
  }catch (e){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Error: $e"),backgroundColor: Colors.red,duration: Duration(seconds: 2),)
    );
  }
}

Future<bool> refreshAccessToken() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    final refreshToken = prefs.getString("refresh_token");
    if (refreshToken == null) {
      return false;
    }
    String apiUrl = dotenv.env["API_URL"]!;
    final response = await http.post(
      Uri.parse("$apiUrl/refresh"),
      headers: {
        "Authorization": "Bearer $refreshToken",
      },
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      await prefs.setString(
        "access_token",
        data["access_token"],
      );
      return true;
    }
    return false;
  } catch (e) {
    return false;
  }
}