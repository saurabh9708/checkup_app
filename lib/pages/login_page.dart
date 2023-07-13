// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, non_constant_identifier_names, override_on_non_overriding_member

import 'package:checkup_app/utils/routes.dart';
import 'package:checkup_app/utils/square_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  //final Credential =
  void logUserIn() async {
    showDialog(
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(),
          );
        });

    FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
  }

  late String Username;
  late String Password;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/yoga_girl.png",
              fit: BoxFit.contain,
              height: 210,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Icon(
              Icons.lock,
              size: 50,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade200)),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Email",
                      labelText: "Email",
                    ),
                    onChanged: (value) {
                      setState(() {
                        emailController = value as TextEditingController;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade100)),
                      fillColor: Colors.grey.shade200,
                      filled: true,
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                    onChanged: (value) {
                      setState(() {
                        Password = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Forget Password ?",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 103, vertical: 3),
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Center(
                        child: Text(
                          "LogIn",
                          style: TextStyle(
                            fontSize: 20,
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 93, vertical: 3),
                  //   margin: EdgeInsets.symmetric(horizontal: 25),
                  //   decoration: BoxDecoration(
                  //       color: Colors.black,
                  //       borderRadius: BorderRadius.circular(8)),
                  // child: ElevatedButton(
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //         backgroundColor: Colors.black),
                  //     child: Text(
                  //       "Sign Up",
                  //       style: TextStyle(
                  //         fontSize: 20,
                  //         // fontWeight: FontWeight.bold,
                  //       ),
                  //     )),
                  // ),
                  // SizedBox(
                  //   height: 20,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8.0,
                          ),
                          child: Text('or continue with'),
                        ),
                        Expanded(
                            child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SquareTile(
                        imagePath: 'assets/images/google.png',
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      SquareTile(imagePath: 'assets/images/facebook_logo.png'),
                    ],
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Not a Member ? '),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Register Now',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
