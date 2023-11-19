import 'package:flutter/material.dart';
import 'package:flutter_phone/utils/routes.dart';
import 'package:flutter_phone/widgets/custom_button.dart';

class WelocomeScreen extends StatefulWidget {
  const WelocomeScreen({super.key});

  @override
  State<WelocomeScreen> createState() => _WelocomeScreenState();
}

class _WelocomeScreenState extends State<WelocomeScreen> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/image1.png",
                  height: 300,
                ),
                const SizedBox(height: 20),
                const Text(
                  "Let's get started!",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Never a better time than now to start.",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton(
                    text: "Get started",
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        MyRoutes.registrationScreen,
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
