// ignore_for_file: prefer_const_constructors

import 'package:checkup_app/pages/auth_page.dart';
import 'package:checkup_app/pages/login_page.dart';
import 'package:checkup_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:checkup_app/pages/Home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Homepage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => AuthPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
      },
    );
  }
}
