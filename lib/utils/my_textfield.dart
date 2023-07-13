// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class TextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const TextField({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
    required InputDecoration decoration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200)),
          fillColor: Colors.grey.shade200,
          filled: true,
          // hintText: hintText,
        ),
        hintText: hintText,
      ),
    );
  }
}
