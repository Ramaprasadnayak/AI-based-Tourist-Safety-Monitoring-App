import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<void> register(String email, String password,BuildContext context) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("register sucessful."),
      ),
    );
  } on FirebaseAuthException catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Invalid credential."),
          ),
        );
  }
}
Future<void> login(String email, String password,BuildContext context) async {
  try {
    UserCredential userCredential =await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    // final User user=userCredential.user;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("login sucessfull"),
      ),
    );
  } on FirebaseAuthException catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Invalid credential."),
          ),
        );
  }
}