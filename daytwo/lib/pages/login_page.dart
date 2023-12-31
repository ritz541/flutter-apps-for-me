import 'package:daytwo/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = " ";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_img.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Username",
                      hintText: "Enter Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(const Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeroute);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      height: 50,
                      width: changeButton ? 50 : 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            changeButton ? 50 : 8,
                          ),
                        ),
                      ),
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              "Login",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // ElevatedButton(
                  //   style: TextButton.styleFrom(
                  //     minimumSize: const Size(
                  //       150,
                  //       40,
                  //     ),
                  //     backgroundColor: Colors.black,
                  //     foregroundColor: Colors.white,
                  //   ),
                  //   onPressed: () {
                  //     Navigator.pushNamed(
                  //       context,
                  //       MyRoutes.homeroute,
                  //     );
                  //   },
                  //   child: const Text("Login"),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
