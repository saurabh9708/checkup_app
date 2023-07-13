// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final icon;
  final String exercisesName;
  final int numberofExercises;
  final color;

  const ExerciseTile({
    super.key,
    required this.icon,
    required this.exercisesName,
    required this.numberofExercises,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 12.0,
      ),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    color: color,
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exercisesName,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      // ignore: prefer_interpolation_to_compose_strings
                      numberofExercises.toString() + "Exercises",
                      style: TextStyle(
                          color: Color.fromARGB(255, 125, 123, 123),
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
