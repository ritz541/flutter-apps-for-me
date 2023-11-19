import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 35,
            ),
            child: Column(
              children: [
                Container(
                  width: 300,
                  height: 300,
                  padding: const EdgeInsets.all(
                    20.0,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.purple[50],
                  ),
                  child: Image.asset(
                    "assets/image2.png",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
