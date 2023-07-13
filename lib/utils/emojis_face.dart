// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class EmojisFace extends StatelessWidget {
  final String emojisFace;

  const EmojisFace({super.key, required this.emojisFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(14)),
      padding: EdgeInsets.all(12),
      child: Center(
        child: Text(
          emojisFace,
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
