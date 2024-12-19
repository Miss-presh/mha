// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:mentalhealth_app/Util/consultant_tile.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
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
                    // category heading
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(
                          'Category',
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

                    // 4 Category section

                    // Relationship
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: EdgeInsets.all(20),
                              child: Text(
                                'Relationship',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            // career
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.blue[800],
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: EdgeInsets.all(20),
                              child: Text(
                                'Career woman',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                    // EDUCATION
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                      decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      padding: EdgeInsets.all(20),
                                      child: Text(
                                        'Education Sc',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    // other
                                     Container(
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: EdgeInsets.all(20),
                              child: Text(
                                'Other category',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                              ],
                            ),
                          ],
                        ),
                        
                    SizedBox(
                     height: 20,
                    ),

                      // consultant section
                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                         Text('Consultant',
                            style: TextStyle( 
                             color: Colors.black,
                             fontSize: 16, 
                             fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.more_horiz)
                       ],
                     ),
                    Expanded(
                      child: ListView(
                        children: [
                          ConsultantTile(
                            icon: Icons.photo, 
                           name: 'Bobby Singer', 
                           category: 'Relationship',
                           color: Colors.green,
                          ),
                          ConsultantTile(
                            icon: Icons.favorite, 
                           name: 'Dean Winchester', 
                           category: 'Career',
                           color: Colors.purple,
                          ),
                          ConsultantTile(
                           icon: Icons.star, 
                           name: 'Mila James', 
                           category: 'Education',
                           color: Colors.blue,
                          ),
                          ConsultantTile(
                           icon: Icons.face, 
                           name: 'Grace Peter', 
                           category: 'Other',
                           color: Colors.yellow,
                          ),
                        ],
                      ),
                    )
                  ],
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}