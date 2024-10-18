import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mockups/firebase_options.dart';
import 'package:mockups/modules/auth/change_password.dart';
import 'package:mockups/modules/auth/code_validate.dart';
import 'package:mockups/modules/auth/create_account.dart';
import 'package:mockups/modules/auth/login.dart';
import 'package:mockups/modules/auth/send_email.dart';
import 'package:mockups/modules/main/home.dart';
import 'package:mockups/modules/main/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Login(),
        '/create-account': (context) => const CreateAccount(),
        '/home': (context) => const Home(),
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
