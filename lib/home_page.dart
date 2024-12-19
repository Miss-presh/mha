// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mentalhealth_app/Util/emoticon_face.dart';
import 'package:mentalhealth_app/Util/exercise_tile.dart';

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
     body: SafeArea(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 25.0),
             child: Column(
               children: [
                 // Greetings Row
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           // Hi Jared
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Hi, Philemon!',
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 24,
                                   fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8,),
                                Text('16th Dec, 2024',
                                 style: TextStyle(color: Colors.blue[200]),
                                ),
                              ],
                            ),
                   
                           // Notification
                           Container(
                             decoration: BoxDecoration(color: Colors.blue[600],
                             borderRadius: BorderRadius.circular(12),
                             ),
                             padding: EdgeInsets.all(12),
                             child: Icon(
                               Icons.notifications,
                               color: Colors.white,
                              ),
                           )
                          ],
                        ),
                 
                        SizedBox(
                          height: 25,
                        ),
                 
                        // Search bar 
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            children: [
                              Icon(Icons.search,
                               color: Colors.white,
                              ),
                              SizedBox(width: 5,
                              ),
                              Text(
                                'Search',
                               style: TextStyle(
                                 color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                 
                        SizedBox(
                          height: 25,
                        ),
                 
                        // how do you feel?
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                             'How do you feel?',
                              style: TextStyle(
                               color: Colors.white,
                               fontSize: 18,
                               fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                          ],
                        ),
                 
                        SizedBox(
                          height: 25,
                        ),
                 
                       // 4 different emoji's
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           //bad
                           Column(
                             children: [
                               EmoticonFace(
                                emoticonFace: '😩',
                               ),
                               SizedBox(
                                 height: 8,
                                ),
                               Text(
                                'Bad',
                                style: TextStyle(
                                 color: Colors.white,
                                ),
                                ),
                              ]
                            ),
                 
                            // fine
                           Column(
                             children: [
                               EmoticonFace(
                                emoticonFace: '😊',
                               ),
                               SizedBox(
                                 height: 8,
                                ),
                               Text(
                                'Fine',
                                style: TextStyle(
                                 color: Colors.white,
                                ),
                                ),
                              ]
                            ),
                  
                           // well
                           Column(
                             children: [
                               EmoticonFace(
                                emoticonFace: '😁',
                               ),
                               SizedBox(
                                 height: 8,
                                ),
                               Text(
                                'Well',
                                style: TextStyle(
                                 color: Colors.white,
                                ),
                                ),
                              ]
                            ),
                            // excellent
                             Column(
                             children: [
                               EmoticonFace(
                                emoticonFace: '😊',
                               ),
                               SizedBox(
                                 height: 8,
                                ),
                               Text(
                                'Excellent',
                                style: TextStyle(
                                 color: Colors.white,
                                ),
                                ),
                              ]
                            ),
                          ],
                        ),
                      ],
                    ),
           ),
           SizedBox(height: 25,
           ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              color: Colors.grey[200],
              child: Center(
                child: Column( 
                  children: [
                    // exercise heading
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                          'Exercises',
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    // listview of exercises
                    Expanded(
                      child: ListView(
                        children: [
                          ExerciseTile(
                            icon: Icons.favorite,
                            exerciseName: 'Speaking Skills',
                            numberOfExercises: 16,
                            color: Colors.orange,
                          ),
                          ExerciseTile(
                            icon: Icons.person,
                            exerciseName: 'Reading Speed',
                            numberOfExercises: 8,
                            color: Colors.blue[600],
                          ),
                          ExerciseTile(
                            icon: Icons.star,
                            exerciseName: 'Writing Skills',
                            numberOfExercises: 20,
                            color: Colors.pink,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
     ),
   );
  }
}