// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:checkup_app/utils/emojis_face.dart';
import 'package:checkup_app/utils/exercise_tile.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit_sharp), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time_filled_outlined), label: ""),
        ]),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('Hello Saurabh',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white)),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "31 march 2023",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 3, 50, 88),
                              borderRadius: BorderRadius.circular(14)),
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                      padding: EdgeInsets.all(13),
                      child: Row(
                        children: [
                          Icon(Icons.search),
                          SizedBox(
                            width: 25,
                          ),
                          Text(
                            "S   e   a   r   c   h",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('How Are You  Love?',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            EmojisFace(emojisFace: "😄"),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "smiley",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 38,
                        ),
                        Column(
                          children: [
                            EmojisFace(emojisFace: "😁"),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Good",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 38,
                        ),
                        Column(
                          children: [
                            EmojisFace(emojisFace: "😒"),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Fine",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 38,
                        ),
                        Column(
                          children: [
                            EmojisFace(
                              emojisFace: "😵",
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Bad",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5.0),
                  child: Container(
                    height: 100.0,
                    margin: const EdgeInsets.only(top: 6.0),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(30.0)),
                      color: Color.fromARGB(255, 238, 230, 230),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 5.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.all(6),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Exercisess",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                              Icon(Icons.more_horiz),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Expanded(
                              child: SingleChildScrollView(
                            child: Column(
                              children: [
                                ExerciseTile(
                                  icon: Icons.favorite,
                                  exercisesName: "Speaking Skill",
                                  numberofExercises: 16,
                                  color: Colors.orange,
                                ),
                                ExerciseTile(
                                  icon: Icons.person,
                                  exercisesName: "Reading skill",
                                  numberofExercises: 8,
                                  color: Colors.green,
                                ),
                                ExerciseTile(
                                  icon: Icons.person_2,
                                  exercisesName: "Typing Skills",
                                  numberofExercises: 20,
                                  color: Colors.red,
                                ),
                                ExerciseTile(
                                  icon: Icons.favorite,
                                  exercisesName: "Yoga",
                                  numberofExercises: 16,
                                  color: Colors.yellow,
                                ),
                              ],
                            ),
                          ))
                        ],
                      ),
                    ),
                  ),
                  // Container(
                  // color: Colors.white,
                  // ),
                ),
              ),
            ],
          ),
        ));
  }
}
