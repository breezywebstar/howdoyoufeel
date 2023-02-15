import 'package:flutter/material.dart';
import 'package:howdoyoufeel/component/emoji_faces.dart';
import 'package:howdoyoufeel/component/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi Raymond!',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '20 Jan, 2023',
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
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
                  // search bar

                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),

                  //hoow do you feel?

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  // four faces

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          EmojiFaces(
                            emojiFace: '😐',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Bad', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          EmojiFaces(
                            emojiFace: '😁',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Fine', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          EmojiFaces(
                            emojiFace: '😅',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Well', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      Column(
                        children: [
                          EmojiFaces(
                            emojiFace: '🤩',
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text('Excellet',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Exercises',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Icon(Icons.more_horiz)
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    //listview of exercises
                    ExerciseTile(
                      numberOfExercises: 16,
                      icon: Icons.favorite,
                      exerciseName: 'Speaking Skills',
                      color: Colors.orange,
                    ),
                    ExerciseTile(
                      numberOfExercises: 8,
                      icon: Icons.person,
                      exerciseName: 'Reading Skills',
                      color: Colors.green,
                    ),
                    ExerciseTile(
                      numberOfExercises: 20,
                      icon: Icons.star,
                      exerciseName: 'Writing Skills',
                      color: Colors.pink,
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
