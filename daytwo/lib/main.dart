import 'package:daytwo/pages/home_page.dart';
import 'package:daytwo/pages/login_page.dart';
import 'package:daytwo/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.dmMono().fontFamily,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: "/login",
      routes: {
        MyRoutes.homeroute: (context) =>  const HomePage(),
        MyRoutes.loginroute: (context) =>  const LoginPage(),
      },
    );
  }
}