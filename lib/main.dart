import 'package:flutter/material.dart';
import 'package:mockups/modules/auth/change_password.dart';
import 'package:mockups/modules/auth/code_validate.dart';
import 'package:mockups/modules/auth/login.dart';
import 'package:mockups/modules/auth/send_email.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/send-email': (context) => const SendEmail(),
        '/code-validate': (context) => const CodeValidate(),
        '/change-password': (context) => const ChangePassword(),
      },
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.black),
          ),
          labelStyle: const TextStyle(color: Colors.black),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
