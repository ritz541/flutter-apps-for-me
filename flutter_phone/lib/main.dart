import 'package:flutter/material.dart';
import 'package:flutter_phone/screens/registration_screen.dart';
import 'package:flutter_phone/screens/welcome_screen.dart';
import 'package:flutter_phone/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const WelocomeScreen(),
      title: "Flutter Phone Authentication",
      initialRoute: "/",
      routes: {
        MyRoutes.registrationScreen: (context) => const RegistrationScreen(),
      },
    );
  }
}
